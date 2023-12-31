#ml Python-GPU/3.7.6 


import sys
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, Dataset
from torchvision import datasets, transforms, models
from PIL import Image
from torchvision.models import swin_b, Swin_B_Weights

print(sys.argv)

weights = Swin_B_Weights.DEFAULT
preprocess = weights.transforms()

train_data = datasets.ImageFolder(sys.argv[1], transform=preprocess)
test_data = datasets.ImageFolder(sys.argv[2], transform=preprocess)

trainloader = DataLoader(train_data, batch_size=32, shuffle=True)
testloader = DataLoader(test_data, batch_size=32)


# Load a pre-trained ResNet18 model and modify the classifier
model = swin_b(weights=Swin_B_Weights.DEFAULT)
model.head = nn.Linear(model.head.in_features, 2)
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model.to(device)
criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=float(sys.argv[4]))

# Train the model
for epoch in range(50):  # loop over the dataset multiple times
    running_loss = 0.0
    for inputs, labels in trainloader:
        inputs, labels = inputs.to(device), labels.to(device)
        optimizer.zero_grad()   # zero the parameter gradients
        outputs = model(inputs)  # forward
        loss = criterion(outputs, labels)  # calculate the loss
        loss.backward()  # backward
        optimizer.step()  # optimize
        running_loss += loss.item()
    print(f"Epoch {epoch+1}, Loss: {running_loss/len(trainloader)}")
    if running_loss/len(trainloader) < 0.00001:
        break

print('Finished Training')

correct = 0
total = 0
model.eval()
# since we're not training, we don't need to calculate the gradients for our outputs
with torch.no_grad():
    for data in testloader:
        images, labels = data
        images, labels = images.to(device), labels.to(device)
        # calculate outputs by running images through the network
        outputs = model(images)
        # the class with the highest energy is what we choose as prediction
        _, predicted = torch.max(outputs.data, 1)
        total += labels.size(0)
        correct += (predicted == labels).sum().item()

acc=str(correct / total)

f = open(sys.argv[3]+'swin_b.txt', "w")
f.write(acc)
f.close()



