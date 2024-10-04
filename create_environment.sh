#!/bin/bash

# Create main App directories
mkdir -p submission_reminder_app/{app,modules,assets,config,bin}

# Creating files
touch submission_reminder_app/app/reminder.sh \
      submission_reminder_app/modules/functions.sh \
      submission_reminder_app/config/config.env \
      submission_reminder_app/assets/submissions.txt \
      submission_reminder_app/startup.sh

# Move submissions.txt to assets
cp submissions.txt submission_reminder_app/assets/

# Add student records to /assets/submissions.txt
echo "Shanessa, Shell Navigation, submitted" >> submission_reminder_app/assets/submissions.txt
echo "Hasby, Shell Navigation, not submitted" >> submission_reminder_app/assets/submissions.txt
echo "Umutoniwabo, Shell Navigation, submitted" >> submission_reminder_app/assets/submissions.txt
echo "Beni, Shell Navigation, not submitted" >> submission_reminder_app/assets/submissions.txt
echo "Ere, Shell Navigation, submitted" >> submission_reminder_app/assets/submissions.txt

# Appending/adding contents to these files
cat functions.sh >> submission_reminder_app/modules/functions.sh
cat reminder.sh >> submission_reminder_app/app/reminder.sh
cat config.env >> submission_reminder_app/config/config.env

# Add content to startup.sh
echo '#!/bin/bash' > submission_reminder_app/startup.sh
echo '' >> submission_reminder_app/startup.sh
echo '#load env variables' >> submission_reminder_app/startup.sh
echo 'source config/config.env' >> submission_reminder_app/startup.sh
echo '#Run script' >> submission_reminder_app/startup.sh
echo 'bash app/reminder.sh' >> submission_reminder_app/startup.sh
echo '' >> submission_reminder_app/startup.sh
echo 'App started.....200' >> submission_reminder_app/startup.sh

# Make it executable
chmod +x submission_reminder_app/startup.sh

echo "Congs...Done!"
