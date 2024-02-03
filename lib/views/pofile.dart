import 'package:flutter/material.dart';
import 'package:software_project/reusable%20com/custom_cat.dart';
import 'package:software_project/views/secuirty.dart';

class Profile extends StatelessWidget {
   Profile({super.key,this.name});
  String? name;
   static String id = 'Profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.all(18.0),
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 25,bottom: 18),
              child: Row(
                children: [
                  const CircleAvatar(
                   radius: 50,
                    backgroundImage: NetworkImage(
                      ''
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('$name',style: const TextStyle(fontSize: 13,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18,bottom: 18),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomCat(image: 'https://img.icons8.com/?size=50&id=58760&format=png', text: 'activity'),
                    const SizedBox(width: 12,),
                    CustomCat(image: 'https://img.icons8.com/?size=50&id=7994&format=png', text: 'paymant'),
                    const SizedBox(width: 12,),
                    CustomCat(image: 'https://img.icons8.com/?size=50&id=11267&format=png', text: 'help')
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18,bottom: 18),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 22,),
                  Text('settings',style: TextStyle(fontSize: 20,),)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18,bottom: 18),
              child: Row(
                children: [
                  Icon(Icons.account_circle_rounded),
                  SizedBox(width: 22,),
                  Text('account',style: TextStyle(fontSize: 20,),)
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 18,bottom: 18),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip_outlined),
                  SizedBox(width: 22,),
                  GestureDetector(
                    onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sec(s: '''Uber Safety :
              Uber’s approach to safety focuses on 4 key pillars:
              1. Platform access: Elevate industry standards with clear platform protocols,
                  strong governance, and
                  robust screening technology.
              2. Product experience: Strive to help reduce safety incidents by building
              new technology solutions as a
              core part of the app.
              3. Support and response: Support riders and drivers with empathy and care
              in times of need.
              4. Partnering with experts and advocates: Ensure that Uber’s safety
              approach is guided by expert and
              advocate advice as part of our commitment to building trust with the
              people and communities we serve.
              What is in Uber’s Safety Reports?
              Uber’s Safety Reports include information about Uber’s actions related to
              safety and data on the most serious safety incidents reported on our
              rideshare platform. These incidents include traffic fatalities, fatal physical
                  assaults, and sexual assaults. The first report covers the years 2017 and
                  2018, and the second covers the years 2019 and 2020.
              Why are you publishing these reports?
              Most companies don’t talk about these hard data about serious safety
              incidents because doing so can invite negative attention—even though
              these incidents affect all companies. We believe it’s time for a new
              approach. Keeping this information secret doesn’t make anyone safer.
              These reports bring hard data to bear in order to drive accountability and
                  improve safety for Uber and the entire industry.issues, and they don’t share
              How do these reports improve safety?
                  In order to improve something, you have to measure it. Yet data on serious
              safety issues, especially sexual violence, is sparse and inconsistent. By
              sharing hard data, we can hold ourselves accountable and share best
              practices with other companies for the benefit of everyone.
              Do these reports cover reported incidents from
              riders and drivers?
              Yes. Our reports include sexual assault incidents reported by drivers and
              riders, plus fatal physical assaults and fatal motor vehicle crashes that
              occurred in connection with the Uber platform, regardless of who the victim
              or accused party was.
              How do I report a safety incident to Uber?
              You can get help from or report an incident to Uber’s dedicated 24/7 Safety
              Support team through the Help menu in your Uber app. Alternatively, you
              can report a safety issue online if you’re a rider, driver, Uber Eats customer,
              or merchant or restaurant. Also, riders have the option to report an incident
              while they’re on a trip, discreetly in the app through Uber’s On-Trip
              Reporting feature.
              Data insights :
              We report the most serious incidents that occur on our rideshare platform:
              motor vehicle fatalities, physical
              assault fatalities. While these incidents on our platform are extremely rare,
              even one is one too many.
              They each reflect an intensely tragic and traumatizing experience of an
              individual using Uber.
              Uber ultimately reflects the world in which we operate. Societal issues,
              national trends, and impacts of major events like a
              pandemic are also seen on our platform. In the early days of COVID-19,
              cities ground to a halt, with most people traveling
              only to meet essential needs. These trends were reflected on the Uber
              platform, where trips decreased. With the closure of
              nighttime venues like bars and nightclubs, the number of these types of
                  trips also dropped
                  Motor vehicle fatalities
                  The year 2020 saw the highest number of motor vehicle fatalities since 2007
              and the highest increase in the fatality rate on
              record. 21 NHTSA attributes the dramatic increase in deaths in 2020 to a
              rise in 3 risky behaviors in particular: alcohol-involved fatalities (+14%),
        unbuckled occupant fatalities (+14%), and speeding related fatalities
    (+17%) due in large part to less congestion on the roadways.
    Uber operates on the same streets as everyone else, and we are not
    immune to the national road safety trends. Overall,
    motor vehicle fatalities per VMT increased by 7% from 2017-2018 to 2019-
    2020, in line with a 6% increase nationally comparing the same sets of years
    The motor vehicle fatality rate connected with the Uber platform in both
    2019 and 2020 is about half the national average, similar to our first report.
    Half of the fatalities connected to the Uber app in 2019-2020 involved at
    least one risky driving behavior, such as alcohol impairment, speeding, or
    wrong-way driving 24—94% were the result of such behaviors by thirdparty drivers. While there was a marked increase in risky driving by third
    parties, these trends were not evident among drivers using the Uber app
    High-level findings in 2019-2020 include:
    • 101 individual motor vehicle fatalities occurred across 91 fatal Uberrelated crashes26
    • This accounts for approximately 0.000005% of total trips or one in
    20,000,000 trips
    • 32% (n=32) of fatalities involved at least one vehicle that was speeding
    • 91% (n=29) were third-party drivers
    • 23% (n=23) of fatalities involved an alcohol-impaired driver
    • 100% were third-party drivers
    • 15% (n=15) of fatalities involved a driver driving the wrong way27
    • 100% were third-party drivers
    • 13% (n=9) of occupant fatalities involved an unbuckled third-party driver
    • 15% (n=11) of occupant fatalities involved an unbuckled rider using the
    Uber platform
    • 42% (n=42) of fatalities were vulnerable road users; 64% (n=27) of those
    fatalities were pedestrians, 29% (n=12)
    were third-party motorcyclists, and 7% (n=3) were bicyclists or scooter
    riders
    • Of the pedestrian fatalities, the majority were on larger roadways such as
    interstates and principal arterial
    roads and not at a crosswalk or intersection
    Fatal physical assault
    In 2020, more lives were tragically lost to violent crime in the United States
    than in any other year over the last 2 decades.
    According to CDC data, 24,576 people died due to homicide in the US in
    2020.30 This represents a 30% increase from
    2019—the largest single-year increase in more than a century. It is critical
    to acknowledge that numbers alone are unable
    to capture the devastating impact of these incidents on families and
    communities.
    In 2019 and 2020, 20 fatalities were reported in a total of 19 physical assault
    incidents in relation to Uber. Of these
    fatalities, 75% (n=15) were riders using the Uber app, and 25% (n=5) were
    drivers using the Uber app. This accounts for
    approximately 0.000001% of total trips, or one in 100,000,000 trips. Overall,
    we observed an increase of 18% from 2017-2018
    to 2019-2020, in line with the increase in national homicide fatalities.
    Conclusion
    As this report shows, 99.9% of trips on the Uber platform ended without a
    safety incident. Only 0.0002% of trips involved a
    critical safety event, and the rate of sexual assault decreased by over 30%
    since our last report. Although these incidents
    are incredibly rare, we recognize that each one represents a devastating
    experience for the individuals, families, and
    communities impacted.
    That’s why our work on safety will never stop. We’re constantly innovating
    and investing in the safety of our platform. We’ve
    prioritized robust screening processes and technology, built new safety
    features, and invested in providing riders and
    drivers with support in times of need. We remain dedicated to helping
    protect drivers and riders who use the Uber platform,
    and we’re committed to following the advice and guidance of safety
    experts and advocates.
    Our commitment to transparency also continues. We encourage others—
    such as airlines and taxi, rideshare, homeshare,
    and hotel companies—to also be transparent on safety. We all have a
    responsibility to make our companies and communities
    as safe as possible, and sharing our data is one step we can all take toward
    making that goal a reality.
    Security
    At Uber, we prioritize the safety and security of our users. We employ a
    robust set of measures to ensure a secure and trustworthy experience for
    both riders and drivers. Below, we outline key aspects of our security
    practices:
    1. Authentication and Verification
    To access our platform, users and drivers undergo a stringent
    authentication process. This involves identity verification through official
    documents, ensuring that only legitimate individuals are part of our
    community.
    2. Background Checks
    Our drivers undergo comprehensive background checks to assess their
    trustworthiness. We screen for criminal records and continuously monitor
    driver backgrounds to maintain a safe environment.
    3. Data Encryption
    We employ state-of-the-art encryption protocols to safeguard user data
    during transmission and storage. Your personal and financial information is
    securely handled to prevent unauthorized access.
    4. Payment Security
    Our payment transactions are secured with advanced encryption and fraud
    detection measures. Your financial information is protected, providing a
    secure environment for all transactions.
    5. Trip Tracking and Monitoring
    Enjoy peace of mind with real-time trip tracking and monitoring features.
    You have full visibility during your trip, and our safety features are designed
    to enhance your control and security.
    6. Emergency Assistance
    In case of emergencies, we have dedicated support and emergency
    assistance features. Reach out to us through the app, and our team will
    promptly assist you.
    7. Privacy Controls
    Take control of your privacy with our privacy settings. We provide you with
    tools to manage your data and privacy preferences within the app.
    8. Account Security
    Secure your account with best practices. Use strong passwords, update
    them regularly, and enable additional security features for added
    protection.
    9. Device Security
    Ensure the security of your device by following our recommended security
    practices. Keep your app updated to the latest version to benefit from the
    latest security enhancements.
    10. Incident Response
    In the unlikely event of a security incident, we have established procedures
    to respond swiftly and transparently. We will communicate promptly with
    users to address any concerns.
    11. Collaboration with Authorities
    We collaborate closely with local authorities to enhance overall security.
    Our partnerships and initiatives aim to create a safer environment for
    everyone using our platform.
    12. User Education
    Stay informed with our educational resources on security best practices.
    Learn how to stay vigilant, recognize potential risks, and report any
    suspicious activity.
    13. Regulatory Compliance
    We are committed to complying with relevant data protection and privacy
    regulations. Our practices adhere to industry standards, and we undergo
    regular audits to ensure compliance.
    14. Security Updates
    To maintain a secure platform, we regularly update our app and security
    features. We encourage users to enable automatic updates for the latest
    security enhancements.
    15. Legal and Ethical Considerations
    We take our legal responsibilities seriously, ensuring that our security
    practices align with ethical standards. Upholding user trust and privacy is at
    the core of our operations.''',)));
                      },
                      child: Text('privacy',style: TextStyle(fontSize: 20,),))
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
