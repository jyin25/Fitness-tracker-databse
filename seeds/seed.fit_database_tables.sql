begin;

insert into muscle_group_table (muscle_name)
  VALUES
    ('Back'), 
    ('Quads'), 
    ('Biceps'), 
    ('Triceps'), 
    ('Chest'), 
    ('Shoulders'), 
    ('Calfs'), 
    ('Abs'), 
    ('Lats'), 
    ('Deltoids'),
    ('Hamstrings'),
    ('traps'),
    ('rest');

insert into exercises_table (exercise_name, exercise_how_to, muscle_group_id, video)
  VALUES 
    ('Bench_Press', 'Lie back on a flat bench. Using a medium width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.
From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.
After a brief pause, push the bar back to the starting position as you breathe out. Focus on pushing the bar using your chest muscles. Lock your arms and squeeze your chest in the contracted position at the top of the motion, hold for a second and then start coming down slowly again. Tip: Ideally, lowering the weight should take about twice as long as raising it.
Repeat the movement for the prescribed amount of repetitions.
When you are done, place the bar back in the rack.', 5, 'https://videos.bodybuilding.com/video/mp4/54000/54651m.mp4'),
    ('Dumbbell_Bench_Press', 'Lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other.
Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width.
Once at shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. The dumbbells should be just to the sides of your chest, with your upper arm and forearm creating a 90 degree angle. Be sure to maintain full control of the dumbbells at all times. This will be your starting position.
Then, as you breathe out, use your chest to push the dumbbells up. Lock your arms at the top of the lift and squeeze your chest, hold for a second and then begin coming down slowly. Tip: Ideally, lowering the weight should take about twice as long as raising it.
Repeat the movement for the prescribed amount of repetitions of your training program.', 5, 'https://videos.bodybuilding.com/video/mp4/28000/28871m.mp4'),
    ('Incline_Dumbbell_Press', 'Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other.
Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width.
Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position.
Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest.
Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them.
Repeat the movement for the prescribed amount of repetitions.
When you are done, place the dumbbells back on your thighs and then on the floor. This is the safest manner to release the dumbbells.', 5, 'https://videos.bodybuilding.com/video/mp4/32000/32421m.mp4'),
    ('Decline_Dumbbell_Flyes', 'Secure your legs at the end of the decline bench and lie down with a dumbbell on each hand on top of your thighs. The palms of your hand will be facing each other.
Once you are laying down, move the dumbbells in front of you at shoulder width. The palms of the hands should be facing each other and the arms should be perpendicular to the floor and fully extended. This will be your starting position.
With a slight bend on your elbows in order to prevent stress at the biceps tendon, lower your arms out at both sides in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms should remain stationary; the movement should only occur at the shoulder joint.
Return your arms back to the starting position as you squeeze your chest muscles and breathe out. Tip: Make sure to use the same arc of motion used to lower the weights.
Hold for a second at the contracted position and repeat the movement for the prescribed amount of repetitions.', 5, 'https://videos.bodybuilding.com/video/mp4/32000/32141m.mp4'),
    ('Dip', 'To get into the starting position, hold your body at arms length with your arms nearly locked above the bars.
Now, inhale and slowly lower yourself downward. Your torso should remain upright and your elbows should stay close to your body. This helps to better focus on tricep involvement. Lower yourself until there is a 90 degree angle formed between the upper arm and forearm.
Then, exhale and push your torso back up using your triceps to bring your body back to the starting position.
Repeat the movement for the prescribed amount of repetitions.', 4, 'https://videos.bodybuilding.com/video/mp4/54000/54831m.mp4'),
    ('Close_Grip_Barbell_Bench_Press', 'Lie back on a flat bench. Using a close grip (around shoulder width), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.
As you breathe in, come down slowly until you feel the bar on your middle chest. Tip: Make sure that - as opposed to a regular bench press - you keep the elbows close to the torso at all times in order to maximize triceps involvement.
After a second pause, bring the bar back to the starting position as you breathe out and push the bar using your triceps muscles. Lock your arms in the contracted position, hold for a second and then start coming down slowly again. Tip: It should take at least twice as long to go down than to come up.
Repeat the movement for the prescribed amount of repetitions.
When you are done, place the bar back in the rack.', 4, 'https://videos.bodybuilding.com/video/mp4/32000/32061m.mp4'),
    ('Smith_Machine_Hip_Raise', 'Position a bench in the rack and load the bar to an appropriate weight. Lie down on the bench, placing the bottom of your feet against the bar. Unlock the bar and extend your legs. You may need to use your hands to assist you. For added stability grasp the sides of the Smith Machine. This will be your starting position.
Initiate the movement by rotating your pelvis, flexing your spine to raise your hips off of the bench. Maintain a slight bend in the knees throughout the motion.
After a brief pause, return the hips to the bench.
Repeat for the desired number of repetitions.', 8, 'https://videos.bodybuilding.com/video/mp4/106000/106992m.mp4'),
    ('Hanging_Leg_Raise', '
Hang from a chin-up bar with both arms extended at arms length in top of you using either a wide grip or a medium grip. The legs should be straight down with the pelvis rolled slightly backwards. This will be your starting position.
Raise your legs until the torso makes a 90-degree angle with the legs. Exhale as you perform this movement and hold the contraction for a second or so.
Go back slowly to the starting position as you breathe in.
Repeat for the recommended amount of repetitions.', 8, 'https://videos.bodybuilding.com/video/mp4/28000/29401m.mp4'),
    ('Standing_Military_Press', 'Start by placing a barbell that is about chest high on a squat rack. Once you have selected the weights, grab the barbell using a pronated (palms facing forward) grip. Make sure to grip the bar wider than shoulder width apart from each other.
Slightly bend the knees and place the barbell on your collar bone. Lift the barbell up keeping it lying on your chest. Take a step back and position your feet shoulder width apart from each other.
Once you pick up the barbell with the correct grip length, lift the bar up over your head by locking your arms. Hold at about shoulder level and slightly in front of your head. This is your starting position.
Lower the bar down to the collarbone slowly as you inhale.
Lift the bar back up to the starting position as you exhale.
Repeat for the recommended amount of repetitions.', 6, 'https://videos.bodybuilding.com/video/mp4/32000/33121m.mp4'),
    ('Dumbbell One-Arm Shoulder Press', 'Grab a dumbbell and either sit on a military press bench or a utility bench that has a back support on it as you place the dumbbells upright on top of your thighs or stand up straight.
Clean the dumbbell up to bring it to shoulder height. The other hand can be kept fully extended to the side, by the waist or grabbing a fixed surface.
Rotate the wrist so that the palm of your hand is facing forward. This is your starting position.
As you exhale, push the dumbbell up until your arm is fully extended.
After a second pause, slowly come down back to the starting position as you inhale.
Repeat for the recommended amount of repetitions and then switch arms.', 6, 'https://videos.bodybuilding.com/video/mp4/28000/28961m.mp4'),
    ('Smith_Machine_Upright_Row', 'To begin, set the bar on the smith machine to a height that is around the middle of your thighs. Once the correct height is chosen and the bar is loaded, grasp the bar using a pronated (palms forward) grip that is shoulder width apart. You may need some wrist wraps if using a significant amount of weight.
Lift the barbell up and fully extend your arms with your back straight. There should be a slight bend at the elbows. This is the starting position.
Use your side shoulders to lift the bar as you exhale. The bar should be close to the body as you move it up. Continue to lift it until it nearly touches your chin. Tip: Your elbows should drive the motion. As you lift the bar, your elbows should always be higher than your forearms. Also, keep your torso stationary and pause for a second at the top of the movement.
Lower the bar back down slowly to the starting position. Inhale as you perform this portion of the movement.
Repeat for the recommended amount of repetitions.', 6, 'https://videos.bodybuilding.com/video/mp4/30000/30901m.mp4'),
    ('Barbell_Squat', 'Begin with the barbell supported on top of the traps. The chest should be up and the head facing forward. Adopt a hip-width stance with the feet turned out as needed.
Descend by flexing the knees, refraining from moving the hips back as much as possible. This requires that the knees travel forward. Ensure that they stay align with the feet. The goal is to keep the torso as upright as possible.
Continue all the way down, keeping the weight on the front of the heel. At the moment the upper legs contact the lower legs reverse the motion, driving the weight upward.', 2, 'https://videos.bodybuilding.com/video/mp4/118000/118981m.mp4'),
    ('Barbell_Deadlift', 'Approach the bar so that it is centered over your feet. Your feet should be about hip-width apart. Bend at the hip to grip the bar at shoulder-width allowing your shoulder blades to protract. Typically, you would use an alternating grip.
With your feet and your grip set, take a big breath and then lower your hips and flex the knees until your shins contact the bar. Look forward with your head. Keep your chest up and your back arched, and begin driving through the heels to move the weight upward.
After the bar passes the knees aggressively pull the bar back, pulling your shoulder blades together as you drive your hips forward into the bar.
Lower the bar by bending at the hips and guiding it to the floor.', 11, 'https://videos.bodybuilding.com/video/mp4/118000/118911m.mp4'),
    ('Leg_Press', 'Using a leg press machine, sit down on the machine and place your legs on the platform directly in front of you at a medium (shoulder width) foot stance. (Note: For the purposes of this discussion we will use the medium stance described above which targets overall development; however you can choose any of the three stances described in the foot positioning section).
Lower the safety bars holding the weighted platform in place and press the platform all the way up until your legs are fully extended in front of you. Tip: Make sure that you do not lock your knees. Your torso and the legs should make a perfect 90-degree angle. This will be your starting position.
As you inhale, slowly lower the platform until your upper and lower legs make a 90-degree angle.
Pushing mainly with the heels of your feet and using the quadriceps go back to the starting position as you exhale.
Repeat for the recommended amount of repetitions and ensure to lock the safety pins properly once you are done. You do not want that platform falling on you fully loaded.', 2, 'https://videos.bodybuilding.com/video/mp4/28000/29581m.mp4'),
    ('Standing_Calf_Raises', 'Adjust the padded lever of the calf raise machine to fit your height.
Place your shoulders under the pads provided and position your toes facing forward (or using any of the two other positions described at the beginning of the chapter). The balls of your feet should be secured on top of the calf block with the heels extending off it. Push the lever up by extending your hips and knees until your torso is standing erect. The knees should be kept with a slight bend; never locked. Toes should be facing forward, outwards or inwards as described at the beginning of the chapter. This will be your starting position.
Raise your heels as you breathe out by extending your ankles as high as possible and flexing your calf. Ensure that the knee is kept stationary at all times. There should be no bending at any time. Hold the contracted position by a second before you start to go back down.
Go back slowly to the starting position as you breathe in by lowering your heels as you bend the ankles until calves are stretched.
Repeat for the recommended amount of repetitions.', 7, 'https://videos.bodybuilding.com/video/mp4/32000/33221m.mp4'),
    ('Seated_Calf_Raise', 'Sit on the machine and place your toes on the lower portion of the platform provided with the heels extending off. Choose the toe positioning of your choice (forward, in, or out) as per the beginning of this chapter.
Place your lower thighs under the lever pad, which will need to be adjusted according to the height of your thighs. Now place your hands on top of the lever pad in order to prevent it from slipping forward.
Lift the lever slightly by pushing your heels up and release the safety bar. This will be your starting position.
Slowly lower your heels by bending at the ankles until the calves are fully stretched. Inhale as you perform this movement.
Raise the heels by extending the ankles as high as possible as you contract the calves and breathe out. Hold the top contraction for a second.
Repeat for the recommended amount of repetitions.', 7, 'https://videos.bodybuilding.com/video/mp4/30000/30441m.mp4'),
    ('Cable_Crossover', '
To get yourself into the starting position, place the pulleys on a high position (above your head), select the resistance to be used and hold the pulleys in each hand. 
Step forward in front of an imaginary straight line between both pulleys while pulling your arms together in front of you. Your torso should have a small forward bend from the waist. This will be your starting position.
With a slight bend on your elbows in order to prevent stress at the biceps tendon, extend your arms to the side (straight out at both sides) in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms and torso should remain stationary; the movement should only occur at the shoulder joint.
Return your arms back to the starting position as you breathe out. Make sure to use the same arc of motion used to lower the weights.
Hold for a second at the starting position and repeat the movement for the prescribed amount of repetitions.', 5, 'https://videos.bodybuilding.com/video/mp4/30000/31881m.mp4'),
    ('Dumbbell_Flyes', 'Lie down on a flat bench with a dumbbell on each hand resting on top of your thighs. The palms of your hand will be facing each other.
Then using your thighs to help raise the dumbbells, lift the dumbbells one at a time so you can hold them in front of you at shoulder width with the palms of your hands facing each other. Raise the dumbbells up like youre pressing them, but stop and hold just before you lock out. This will be your starting position.
With a slight bend on your elbows in order to prevent stress at the biceps tendon, lower your arms out at both sides in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms should remain stationary; the movement should only occur at the shoulder joint.
Return your arms back to the starting position as you squeeze your chest muscles and breathe out. Tip: Make sure to use the same arc of motion used to lower the weights.
Hold for a second at the contracted position and repeat the movement for the prescribed amount of repetitions.', 5, 'https://videos.bodybuilding.com/video/mp4/28000/28921m.mp4'),
    ('Cable_Rope_Overhead_Triceps_Extension', 'Attach a rope to the bottom pulley of the pulley machine.
Grasping the rope with both hands, extend your arms with your hands directly above your head using a neutral grip (palms facing each other). Your elbows should be in close to your head and the arms should be perpendicular to the floor with the knuckles aimed at the ceiling. This will be your starting position.
Slowly lower the rope behind your head as you hold the upper arms stationary. Inhale as you perform this movement and pause when your triceps are fully stretched.
Return to the starting position by flexing your triceps as you breathe out.
Repeat for the recommended amount of repetitions.', 4, 'https://videos.bodybuilding.com/video/mp4/30000/31971m.mp4'),
    ('Cable_Lying_Triceps_Extension', 'Lie on a flat bench and grasp the straight bar attachment of a low pulley with a narrow overhand grip. Tip: The easiest way to do this is to have someone hand you the bar as you lay down.
With your arms extended, position the bar over your torso. Your arms and your torso should create a 90-degree angle. This will be your starting position.
Lower the bar by bending at the elbow while keeping the upper arms stationary and elbows in. Go down until the bar lightly touches your forehead. Breathe in as you perform this portion of the movement.
Flex the triceps as you lift the bar back to its starting position. Exhale as you perform this portion of the movement.
Hold for a second at the contracted position and repeat for the recommended amount of repetitions.', 4, 'https://videos.bodybuilding.com/video/mp4/30000/31941m.mp4'),
    ('Cable_Crunch', 'Kneel below a high pulley that contains a rope attachment.
Grasp cable rope attachment and lower the rope until your hands are placed next to your face.
Flex your hips slightly and allow the weight to hyperextend the lower back. This will be your starting position.
With the hips stationary, flex the waist as you contract the abs so that the elbows travel towards the middle of the thighs. Exhale as you perform this portion of the movement and hold the contraction for a second.
Slowly return to the starting position as you inhale. Tip: Make sure that you keep constant tension on the abs throughout the movement. Also, do not choose a weight so heavy that the lower back handles the brunt of the work.', 8, 'https://videos.bodybuilding.com/video/mp4/30000/31891m.mp4'),
    ('Crunches', 'Lie flat on your back with your feet flat on the ground, or resting on a bench with your knees bent at a 90 degree angle. If you are resting your feet on a bench, place them three to four inches apart and point your toes inward so they touch.
Now place your hands lightly on either side of your head keeping your elbows in. Tip: Dont lock your fingers behind your head.
While pushing the small of your back down in the floor to better isolate your abdominal muscles, begin to roll your shoulders off the floor.
Continue to push down as hard as you can with your lower back as you contract your abdominals and exhale. Your shoulders should come up off the floor only about four inches, and your lower back should remain on the floor. At the top of the movement, contract your abdominals hard and keep the contraction for a second. Tip: Focus on slow, controlled movement - dont cheat yourself by using momentum.
After the one second contraction, begin to come down slowly again to the starting position as you inhale.', 8, 'https://videos.bodybuilding.com/video/mp4/28000/28851m.mp4'),
    ('Side_Lateral_Raise', 'Pick a couple of dumbbells and stand with a straight torso and the dumbbells by your side at arms length with the palms of the hand facing you. This will be your starting position.
While maintaining the torso in a stationary position (no swinging), lift the dumbbells to your side with a slight bend on the elbow and the hands slightly tilted forward as if pouring water in a glass. Continue to go up until you arms are parallel to the floor. Exhale as you execute this movement and pause for a second at the top.
Lower the dumbbells back down slowly to the starting position as you inhale.', 6, 'https://videos.bodybuilding.com/video/mp4/30000/30771m.mp4'),
    ('Front_Cable_Raise', 'Select the weight on a low pulley machine and grasp the single hand cable attachment that is attached to the low pulley with your left hand.
Face away from the pulley and put your arm straight down with the hand cable attachment in front of your thighs at arms length with the palms of the hand facing your thighs. This will be your starting position.
While maintaining the torso stationary (no swinging), lift the left arm to the front with a slight bend on the elbow and the palms of the hand always faces down. Continue to go up until you arm is slightly above parallel to the floor. Exhale as you execute this portion of the movement and pause for a second at the top.
Now as you inhale lower the arm back down slowly to the starting position.', 6, 'https://videos.bodybuilding.com/video/mp4/32000/32271m.mp4'),
    ('Dumbbell_Lying_Rear_Lateral_Raise', 'While holding a dumbbell in each hand, lay with your chest down on a slightly inclined (around 15 degrees when measured from the floor) adjustable bench.
Position the palms of the hands in a neutral manner (palms facing your torso) as you keep the arms extended with the elbows slightly bent. This will be your starting position.
Now raise the arms to the side until your elbows are at shoulder height and your arms are roughly parallel to the floor as you exhale. Tip: Maintain your arms perpendicular to the torso while keeping them extended throughout the movement. Also, keep the contraction at the top for a second.
Slowly lower the dumbbells to the starting position as you inhale.', 6, 'https://videos.bodybuilding.com/video/mp4/54000/54871m.mp4'),
    ('Leg_Extensions', 'For this exercise you will need to use a leg extension machine. First choose your weight and sit on the machine with your legs under the pad (feet pointed forward) and the hands holding the side bars. This will be your starting position. Tip: You will need to adjust the pad so that it falls on top of your lower leg (just above your feet). Also, make sure that your legs form a 90-degree angle between the lower and upper leg. If the angle is less than 90-degrees then that means the knee is over the toes which in turn creates undue stress at the knee joint. If the machine is designed that way, either look for another machine or just make sure that when you start executing the exercise you stop going down once you hit the 90-degree angle.
Using your quadriceps, extend your legs to the maximum as you exhale. Ensure that the rest of the body remains stationary on the seat. Pause a second on the contracted position.
Slowly lower the weight back to the original position as you inhale, ensuring that you do not go past the 90-degree angle limit.', 2, 'https://videos.bodybuilding.com/video/mp4/28000/29561m.mp4'),
    ('Seated_Leg_Curl', 'Adjust the machine lever to fit your height and sit on the machine with your back against the back support pad.
Place the back of lower leg on top of padded lever (just a few inches under the calves) and secure the lap pad against your thighs, just above the knees. Then grasp the side handles on the machine as you point your toes straight (or you can also use any of the other two stances) and ensure that the legs are fully straight right in front of you. This will be your starting position.
As you exhale, pull the machine lever as far as possible to the back of your thighs by flexing at the knees. Keep your torso stationary at all times. Hold the contracted position for a second.
Slowly return to the starting position as you breathe in.', 11, 'https://videos.bodybuilding.com/video/mp4/30000/30521m.mp4'),
    ('Wide-Grip_Lat_Pulldown', 'Sit down on a pull-down machine with a wide bar attached to the top pulley. Make sure that you adjust the knee pad of the machine to fit your height. These pads will prevent your body from being raised by the resistance attached to the bar.
Grab the bar with the palms facing forward using the prescribed grip. Note on grips: For a wide grip, your hands need to be spaced out at a distance wider than shoulder width. For a medium grip, your hands need to be spaced out at a distance equal to your shoulder width and for a close grip at a distance smaller than your shoulder width.
As you have both arms extended in front of you holding the bar at the chosen grip width, bring your torso back around 30 degrees or so while creating a curvature on your lower back and sticking your chest out. This is your starting position.
As you breathe out, bring the bar down until it touches your upper chest by drawing the shoulders and the upper arms down and back. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. The upper torso should remain stationary and only the arms should move. The forearms should do no other work except for holding the bar; therefore do not try to pull down the bar using the forearms.
After a second at the contracted position squeezing your shoulder blades together, slowly raise the bar back to the starting position when your arms are fully extended and the lats are fully stretched. Inhale during this portion of the movement.', 9, 'https://videos.bodybuilding.com/video/mp4/32000/32681m.mp4'),
    ('Wide-Grip_Pulldown_Behind_The_Neck', 'Sit down on a pull-down machine with a wide bar attached to the top pulley. Make sure that you adjust the knee pad of the machine to fit your height. These pads will prevent your body from being raised by the resistance attached to the bar.
Grab the bar with the palms facing forward using the prescribed grip. Note on grips: For a wide grip, your hands need to be spaced out at a distance wider than your shoulder width. For a medium grip, your hands need to be spaced out at a distance equal to your shoulder width and for a close grip at a distance smaller than your shoulder width.
As you have both arms extended in front of you holding the bar at the chosen grip width, bring your torso and head forward. Think of an imaginary line from the center of the bar down to the back of your neck. This is your starting position.
As you breathe out, bring the bar down until it touches the back of your neck by drawing the shoulders and the upper arms down and back. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. The upper torso should remain stationary and only the arms should move. The forearms should do no other work except for holding the bar; therefore do not try to pull down the bar using the forearms.
After a second on the contracted position squeezing your shoulder blades together, slowly raise the bar back to the starting position when your arms are fully extended and the lats are fully stretched. Inhale during this portion of the movement.', 9, 'https://videos.bodybuilding.com/video/mp4/32000/32671m.mp4'),
    ('Straight-Arm_Pulldown', 'You will start by grabbing the wide bar from the top pulley of a pulldown machine and using a wider than shoulder-width pronated (palms down) grip. Step backwards two feet or so.
Bend your torso forward at the waist by around 30-degrees with your arms fully extended in front of you and a slight bend at the elbows. If your arms are not fully extended then you need to step a bit more backwards until they are. Once your arms are fully extended and your torso is slightly bent at the waist, tighten the lats and then you are ready to begin.
While keeping the arms straight, pull the bar down by contracting the lats until your hands are next to the side of the thighs. Breathe out as you perform this step.
While keeping the arms straight, go back to the starting position while breathing in.', 9, 'https://videos.bodybuilding.com/video/mp4/32000/32961m.mp4'),
    ('Smith_Machine_Shrug', 'To begin, set the bar height on the smith machine around the middle of your thighs. Once the correct height is chosen and the bar is loaded, grab the bar using a pronated grip (palms facing you) shoulder width apart from each other.
Lift the barbell up and fully extend your arms with your back straight. This is the starting position.
While exhaling, elevate the bar by raising your shoulders until they come close to touching your ears.
Hold the contraction for a second before lowering the bar back down to the starting position while inhaling.', 12, 'https://videos.bodybuilding.com/video/mp4/30000/30871m.mp4'),
    ('Bent_Over_Barbell_Row', 'Holding a barbell with a pronated grip (palms facing down), bend your knees slightly and bring your torso forward, by bending at the waist, while keeping the back straight until it is almost parallel to the floor. Tip: Make sure that you keep the head up. The barbell should hang directly in front of you as your arms hang perpendicular to the floor and your torso. This is your starting position.
Now, while keeping the torso stationary, breathe out and lift the barbell to you. Keep the elbows close to the body and only use the forearms to hold the weight. At the top contracted position, squeeze the back muscles and hold for a brief pause.
Then inhale and slowly lower the barbell back to the starting position.', 1, 'https://videos.bodybuilding.com/video/mp4/28000/28581m.mp4'),
    ('Dumbbell_Incline_Row', 'Using a neutral grip, lean into an incline bench.
Take a dumbbell in each hand with a neutral grip, beginning with the arms straight. This will be your starting position.
Retract the shoulder blades and flex the elbows to row the dumbbells to your side.
Pause at the top of the motion, and then return to the starting position.', 1, 'https://videos.bodybuilding.com/video/mp4/98000/99202m.mp4'),
    ('Seated_Cable_Rows', 'For this exercise you will need access to a low pulley row machine with a V-bar. Note: The V-bar will enable you to have a neutral grip where the palms of your hands face each other. To get into the starting position, first sit down on the machine and place your feet on the front platform or crossbar provided making sure that your knees are slightly bent and not locked.
Lean over as you keep the natural alignment of your back and grab the V-bar handles.
With your arms extended pull back until your torso is at a 90-degree angle from your legs. Your back should be slightly arched and your chest should be sticking out. You should be feeling a nice stretch on your lats as you hold the bar in front of you. This is the starting position of the exercise.
Keeping the torso stationary, pull the handles back towards your torso while keeping the arms close to it until you touch the abdominals. Breathe out as you perform that movement. At that point you should be squeezing your back muscles hard. Hold that contraction for a second and slowly go back to the original position while breathing in.', 1, 'https://videos.bodybuilding.com/video/mp4/30000/30431m.mp4'),
    ('Barbell_Shrug', 'Stand up straight with your feet at shoulder width as you hold a barbell with both hands in front of you using a pronated grip (palms facing the thighs). Tip: Your hands should be a little wider than shoulder width apart. You can use wrist wraps for this exercise for a better grip. This will be your starting position.
Raise your shoulders up as far as you can go as you breathe out and hold the contraction for a second. Tip: Refrain from trying to lift the barbell by using your biceps.
Slowly return to the starting position as you breathe in.', 12, 'https://videos.bodybuilding.com/video/mp4/24000/25761m.mp4'),
    ('Barbell_Curl', 'Stand up with your torso upright while holding a barbell at a shoulder-width grip. The palm of your hands should be facing forward and the elbows should be close to the torso. This will be your starting position.
While holding the upper arms stationary, curl the weights forward while contracting the biceps as you breathe out. Tip: Only the forearms should move.
Continue the movement until your biceps are fully contracted and the bar is at shoulder level. Hold the contracted position for a second and squeeze the biceps hard.
Slowly begin to bring the bar back to starting position as your breathe in.', 3, 'https://videos.bodybuilding.com/video/mp4/24000/25681m.mp4'),
    ('Incline_Dumbbell_Curl', 'Sit back on an incline bench with a dumbbell in each hand held at arms length. Keep your elbows close to your torso and rotate the palms of your hands until they are facing forward. This will be your starting position.
While holding the upper arm stationary, curl the weights forward while contracting the biceps as you breathe out. Only the forearms should move. Continue the movement until your biceps are fully contracted and the dumbbells are at shoulder level. Hold the contracted position for a second.
Slowly begin to bring the dumbbells back to starting position as your breathe in.', 3, 'https://videos.bodybuilding.com/video/mp4/32000/32401m.mp4'),
    ('Reverse_Barbell_Curl', 'Stand up with your torso upright while holding a barbell at shoulder width with the elbows close to the torso. The palm of your hands should be facing down (pronated grip). This will be your starting position.
While holding the upper arms stationary, curl the weights while contracting the biceps as you breathe out. Only the forearms should move. Continue the movement until your biceps are fully contracted and the bar is at shoulder level. Hold the contracted position for a second as you squeeze the muscle.
Slowly begin to bring the bar back to starting position as your breathe in.', 3, 'https://videos.bodybuilding.com/video/mp4/30000/30231m.mp4'),
    ('Barbell_Curls_Lying_Against_An_Incline', 'Lie against an incline bench, with your arms holding a barbell and hanging down in a horizontal line. This will be your starting position.
While keeping the upper arms stationary, curl the weight up as high as you can while squeezing the biceps. Breathe out as you perform this portion of the movement. Tip: Only the forearms should move. Do not swing the arms.
After a second contraction, slowly go back to the starting position as you inhale. Tip: Make sure that you go all of the way down.', 3, 'https://videos.bodybuilding.com/video/mp4/24000/25691m.mp4'),
    ('Hammer_Curls', 'Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso.
The palms of the hands should be facing your torso. This will be your starting position.
Now, while holding your upper arm stationary, exhale and curl the weight forward while contracting the biceps. Continue to raise the weight until the biceps are fully contracted and the dumbbell is at shoulder level. Hold the contracted position for a brief moment as you squeeze the biceps. Tip: Focus on keeping the elbow stationary and only moving your forearm.
After the brief pause, inhale and slowly begin the lower the dumbbells back down to the starting position.', 3, 'https://videos.bodybuilding.com/video/mp4/28000/29371m.mp4'),
    ('Break', 'Even Superman sleeps', 13, 'https://www.youtube.com/embed/9F8tJ32cBmw');
commit;
