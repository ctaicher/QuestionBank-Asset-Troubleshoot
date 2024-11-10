import Foundation

/*struct QuestionBank {
    var questions: [Question] = [
        Question(
            imageAbove: nil,
            text: "What is the capital of France?",
            imageMiddle: nil,
            options: ["Paris", "London", "Berlin", "Rome"],
            correctOptionIndex: 0,
            imageBelow: nil,
            explanation: "Paris is the capital and most populous city of France.",
            citation: "https://en.wikipedia.org/wiki/Paris",
            isSample: true,
            subject: "Geography",
            videoExplain: nil,
            video: nil
        ),
        Question(
            imageAbove: nil,
            text: "What is 2 + 2?",
            imageMiddle: nil,
            options: ["3", "4", "5", "6"],
            correctOptionIndex: 1,
            imageBelow: nil,
            explanation: "2 + 2 equals 4.",
            citation: "Basic math",
            isSample: true,
            subject: "Math",
            videoExplain: nil,
            video: nil
        )
    ]
}
*/

struct QuestionBank {
    var questions: [Question] = [
        Question(
            imageAbove: "GSW",
            text: "While staffing a small community emergency department, two teenage boys, one 13 and one 17, are dropped off by friends who state they were at a party when they were both shot.\n\nA scout CXR of the more ill appearing child is below.\n\nWhat is the next best step?",
            imageMiddle: "GSWcxr",
            options: ["Transfer the patient as your facility does not have the capacity to stabilize the patient further.", "Keep the patient in your ER until blood pressures are stable for at least one hour.", "Call their parents to ask for permission for transfer.", "Transfuse 1 unit pRBCs before transfer."], // Add other incorrect options as needed
            correctOptionIndex: 0,
            imageBelow: nil,
            explanation: "These patients necessitate immediate transfer to a level 1 trauma center given significant GSW by buckshot.\n\nAccording to EMTALA Interpretive Guidelines – Responsibilities of Medicare Participating Hospitals in Emergency Cases (Appendix V): “If a hospital is unable to stabilize an individual within its capability, an appropriate transfer should be implemented.”\n\nSimilarly, per EMTALA §489.24(e) Restricting Transfer Until the Individual Is Stabilized (1) General: If an individual at a hospital has an emergency medical condition that has not been stabilized, the hospital may not transfer the individual unless— (B) A physician (within the meaning of Section 1861(r)(1) of the Act) has signed a certification that, based upon the information available at the time of transfer, the medical benefits reasonably expected from the provision of appropriate medical treatment at another medical facility outweigh the increased risks to the individual.\n\nIn addition to documenting the above, that the benefit of transfer to a trauma center outweighs the risks of transfer, there are Four Requirements for an Appropriate Transfer:\n\n1. Transferring hospital provides medical treatment within its capacity.\n2. The receiving facility has available space and qualified personnel AND has agreed to accept the patient.\n3. The transferring hospital sends to the receiving facility all medical records that are available at the time of transfer.\n4. The transfer is effected through qualified personnel and transportation equipment. Note that the physician at the sending hospital (not the receiving hospital) has the responsibility to determine the appropriate mode, equipment and attendants for transfer. An EMT may not always be “qualified personnel”, and this is up to the sending provider.",
            citation: "https://www.cms.gov/regulations-and-guidance/legislation/emtala",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Trauma"),
        
        Question(
            imageAbove: nil,
            text: "What medical decision making tools should you utilize to most accurately diagnose sepsis?",
            imageMiddle: nil,
            options: ["SIRS criteria.", "Sepsis 2 Guidelines.", "Hypotension.", "SIRS criteria and qSOFA."],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            qSOFA is newer and outperforming SIRS criteria, but has not caught on in the emergency medicine world as it was born out of ICU-based data.

            With qSOFA, at least 2 of 3 criteria must be met: SBP<100, RR>21, GCS<15.

            SIRS is defined by two or more of: Temp>38 or <36, HR>90, RR>20, WBC>12 or <4. Example of source of infection is ‘pulmonary’ or ‘integument (skin)’, represented by cough, or skin rash, respectively.

            Note that RR is the only common criteria among decision tools.
            """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7929579/",
            isSample: true,
            videoExplain: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/MedQ+-+Signs+of+Sepsis+Animation+-+faster.MOV"), // Fixed URL //
            video: nil,
            subject: "Infectious Disease"),
        
        Question(imageAbove: nil,
                 text:"A 54 year-old female with past medical history of myasthenia gravis and chronic respiratory failure now five days status post tracheostomy placement is bleeding approximately 100cc per minute out of the traech site. As you prepare for her arrival what equipment should be readied?",
                 imageMiddle: nil,
                 options: ["Additional tracheostomy tubes.",
                           "Miller laryngoscope blade.",
                           "Yankauer suction.",
                           "Sterile gloves and a 10 cc syringe. " ],
                 correctOptionIndex: 3,
                 imageBelow: "TIFistula",
                 explanation: """
    This patient is presenting with the feared complication of tracheoinnominate fistula (TIF) bleeding.

    The reported incidence of TIF is under 1% in most studies. In the majority of patients (about 70%), TIF develops after 48 hours and within the first 3 weeks after placement. However, TIF has been reported in patients 1 or more years from initial placement of tracheostomy.

    The Utley maneuver can immediately control the hemorrhage. In this maneuver, place a finger through the incision to apply direct pressure on the artery against the posterior sternum and compress it. A similar tamponade effect can be achieved via the over-inflation of the cuff of the tracheostomy tube.

    Similar to prep for MTP, one should immediately call for additional assistance for additional personnel to maintain control of hemorrhage simultaneous with airway management. For example, one assistant may place a hand in the tracheostomy site to perform an Utley’s, while you secure the airway. For airway equipment selection, the best option is to place a cuffed endotracheal tube beyond the site of bleeding.

    Having numerous suction devices readied will also be helpful, secondary to the equipment that are critical for performing a hemostasis achieving procedure.

""",
                 citation: "https://www.ncbi.nlm.nih.gov/books/NBK482505/",
                 isSample: true,
                 videoExplain: nil,
                 video: URL(string:"https://medqvideos.s3.us-west-1.amazonaws.com/Wheelchair.mp4"),
        subject: "Airway"),
                
        Question(
            text: "A 24 yr old with PMH of nephrolithiasis presents with sudden colicky, right-sided flank pain, polyuria and hematuria.\n\nAfter ordering pain medication and a bolus, what imaging study should be performed?",
            imageMiddle: nil,
            options: [
                "Cat Scan Abdomen/Pelvis.",
                "MRI Abdomen.",
                "KUB.",
                "Ultrasound."
            ],
            correctOptionIndex: 3,
            imageBelow: "KidneyCrisp",
            explanation: """
            Above is a diagram showing percent chance a stone completely passes based on location in the ureter.
            
            In a 2019 systematic review of 232 articles by Moore, et al, among young patients with low BMIs, renal ultrasound has as high as 96% sensitivity for stones. There is consensus that among patients with typical symptoms of stones who achieve adequate pain relief, ultrasound is the imaging study of choice.
            
            Also recall there are three common narrowed anatomic locations for a stone to get lodged, at the uretoropelvic junction (UPJ) (leaving the kidney), the ureteral crossing of the illiacs (iliac vessels) and the ureterovesical junction (UVJ). The farther the stone has passed along its course the more likely it will pass sooner, as shown in the image below.
            
            While the majority of renal stones under 6 mm will pass (>80%) without procedural intervention, small lodged stones can cause serious morbidity and mortality, especially in the setting of coexisting infection. If a urinary tract infection is present in the setting of obstructing stone, this is an indication for a procedural intervention to remove the stone. Otherwise, infection source control will not be achieved as purulent material builds up behind a stone.
            """,
            citation: "https://www.jacr.org/article/S1546-1440(19)30424-7/fulltext",
            isSample: true,
            subject: "Nephrology"),
        Question(imageAbove:"FentUser",
                 text: "A 39 year old male daily fentanyl user (intranasal route) presents to your emergency department requesting buprenorphine for support “going cold turkey”. \n\nWhich of the following presentations suggests he is an ideal buprenorphine candidate?",
                 options: [
                    "Last use of intravenous fentanyl in the last 2 hours with no symptoms.",
                    "Last use of intravenous fentanyl 16 hours ago and with severe vomiting and anxiety.",
                    "Last use of intranasal fentanyl in the last 4 hours and with very mild headache.",
                    "Last use of intranasal fentanyl in the last 12 hours and moderate symptoms."
                 ],
                 correctOptionIndex: 3,
                 explanation: """
            In the United States, buprenorphine can be dispensed by an opioid treatment program and can be prescribed by any provider who is licensed under state law and possesses a valid Drug Enforcement Administration (DEA) registration. In 2023 the Consolidated Appropriations Act removed the requirement of obtaining a federally required DATA waiver (X-Waiver).
            
            Buprenorphine acts as a partial agonist at the mu-opioid receptor and has a prolonged duration of action due to its high affinity for the receptor. It is also an antagonist at the kappa opioid receptor. Pharmacologic effects are similar to full opioid agonists (eg, morphine, methadone), but with a "ceiling effect" at high doses across a range of pharmacodynamic measures. This lowers the potential for adverse effects from overdose (eg, respiratory depression).
            
            Because it is a partial agonist at the mu-opioid receptor, initiation of buprenorphine may lead to withdrawal symptoms in patients who have recently used opioids. To minimize this risk, it should be initiated when a patient begins to show objective, observable signs of moderate withdrawal, usually six hours or longer after the last dose of a short-acting opioid, and potentially longer (24 hours to 48 hours) following the use of long-acting opioids, but before severe withdrawal symptoms occur.
            
            Note that the mode (IV vs IN etc) of a patient’s opioid abuse is less important than the time since last use and whether it was short or long acting.
            
            Bothersome mild withdrawal symptoms during this time can be treated with a variety of over-the-counter and prescription medications, such as acetaminophen for aches, antacids for indigestion, loperamide for diarrhea, and hydroxyzine or clonidine for anxiety and restlessness.
            
            Buprenorphine suppresses withdrawal for 24 to 48 hours; typical dosing for OUD is every 24 hours. Peak plasma levels occur at approximately 90 minutes and increase linearly with dose.
            """,
                 citation: """
            Substance Abuse and a Mental Health Services Administration. Removal of DATA Waiver (X-Waiver) Requirement. https://www.samhsa.gov/medications-substance-use-disorders/removal-data-waiver-requirement (Accessed on February 07, 2023).
            
            Walsh SL, Preston KL, Stitzer ML, et al. Clinical pharmacology of buprenorphine: ceiling effects at high doses. Clin Pharmacol Ther 1994; 55:569.
            """,
                 isSample: true,
                 subject: "Substance Abuse"),
        Question(
            imageAbove: "MigraineMuseum",  // Include your image name or path here
            text: "A 24F with no PMH presents with gradual onset unilateral throbbing headache with one episode of non-bloody, non-bilious emesis. The headache was preceded by some brief flashing lights. She has a strong history of syncope with IVs.\n\nWhat medication should be started?",
            imageMiddle: nil,
            options: [
                "Aspirin 324mg PO.",
                "Toradol 15mg IM.",
                "Compazine 10mg PO.",
                "Zofran 4-8mg PO."
            ],
            correctOptionIndex: 3,
            explanation: """
            Migraine headache can be treated with PO Zofran 4-8mg PO once (preferably a disintegrating tablet) quite effectively.
            
            While NSAIDs have traditionally been first line, the serotonin modulating effect of ondansetron can be utilized first line as well. Disintegrating tabs are particularly useful with patients are intolerant of IV and IM medications. A short prescription for Zofran PRN in addition to recommending keeping a diary for triggers and referral to a neurologist are also important to add to the treatment plan.
            """,
            citation: "https://www.contemporarypediatrics.com/view/ondansetron-effective-acute-migraine", // No citation provided in the raw data for this question
            isSample: true,
            subject: "Substance Abuse"),
        
        Question(imageAbove: "BleedingIsFunFinal",
                 text: "A 74 year-old woman presents 1 day post-op from an open mitral valve repair with lightheadedness.\n\nVitals are: BP 74/30 RR 24 HR 120 02 96%.She appears extremely pale and weak.\n\nIn addition to ordering pRBCs for transfusion, to improve hemostasis, administer:",
                 imageMiddle: nil,
                 options: [
                    "FFP.",
                    "TXA.",
                    "Protamine.",
                    "PCC."
                 ],
                 correctOptionIndex: 3,
                 explanation: """
            Cardiac surgery imposes multiple stressors on the coagulation system, resulting in systemic derangements that include the depletion of enzymatic coagulation factors to a degree that impairs thrombin generation and may lead to excessive bleeding and transfusion.
            
            A 2021 randomized pilot trial published in JAMA suggests that, when available, PCC may be preferred to FFP in terms of bleeding severity and hemostatic outcomes. Hemostatic therapy was not required at the 4-hour time point for 43 patients (80%) in the PCC group and for 32 patients (68%) in the FFP group (P = .25) nor at the 24-hour time point for 41 patients (76%) in the PCC group and for 31 patients (66%) patients in the FFP group (P = .28). The median numbers of units for 24-hour cumulative transfusions (red blood cells, platelets) were 6.0 U in the PCC group and 10 U in the FFP group.\n\n During the first 24 hours after start of cardiac surgery, 15 patients (28%) in the PCC group and 8 patients (17%) in the FFP group received no red blood cells (P = .24). Chest tube drainage was significantly lower in the PCC group both at 12 hours (median volume, 310 mL vs 500; P < .001) and at 24 hours (median volume, 450 mL  vs 700 mL; P < .001) after surgery.\n\nAdverse events and thromboembolic events were similar between groups, as were durations of mechanical ventilation, ICU and hospital length of stays. There were 2 deaths (3.7%) in the PCC group and 2 deaths (4.1%) in the FFP group.
            
            While compositions can be manufacturer dependent, 4-factor PCCs generally contain vitamin K–dependent coagulation factors (factors II, VII, IX, and X), the anticoagulant proteins C and S, and small amounts of heparin. The advantages of PCCs relative to FFP are that they are pathogen reduced, do not require ABO blood group matching or thawing (allowing for near-patient storage and timely administration), are manufactured from pooled plasma (decreasing the risk of transfusion-related acute lung injury), require substantially lower volumes to achieve dose equivalence with FFP (decreasing the risk of transfusion-associated circulatory overload), and may lead to greater thrombin generation (improving hemostatic effectiveness).
            """,
                 citation: "https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2778079",
                 isSample: true,
                 subject: "Cardiology"),
        
        Question(imageAbove: "Billing",  // Remember to provide the image name or path if you want to associate one with the question.
                 text: "Since January 1, 2023, CPT Evaluation and Management Codes and Guidelines have changed, per the recommendations set by the American Medical Association. \n\nSince this date, which most impacts level of coding (and thus billing)?",
                 imageMiddle: nil,
                 options: [
                    "History and Physical details.",
                    "Medical decision making complexity.",
                    "Medications ordered.",
                    "Medical decision making complexity or time spent with patient."
                 ],
                 correctOptionIndex: 3,
                 explanation: """
            To summarize the 42 page AMA CPT Evaluation and Management (E/M) Code and Guidelines Changes which began January 1, 2023, the two factors which most impact levels of E/M services are 1) the level of the medical decision making (MDM): straightforward, low, moderate, or high (complexities) and 2) total time for E/M services performed on the date of the encounter.
            
            MDM includes establishing diagnoses, assessing the status of a condition, and/or selecting a management option. MDM is further defined by three elements. The elements are:
            ■ The number and complexity of problem(s) that are addressed during the encounter.
            ■ The amount and/or complexity of data to be reviewed and analyzed. These data include medical records, prior studies, newly ordered laboratory tests and images, which were reviewed and analyzed for the encounter. This also includes information obtained and considered from interprofessional communications (consults, discussion with PCPs, etc..).
            ■ The risk of complications, morbidity or mortality given your patient’s clinical state.
            
            The take home points here are that when documenting in your MDM section of your note, it is imperative to describe the complexity of problems, complexity of data assessed and risk of complications, or decompensation.
            
            In one MDM example: To summarize, Mrs Smith is a 68 year-old-female with a past medical history of coronary artery disease status post PCI, HFrEF and valvular disease warranting TAVR as well as insulin-dependent DMT2 presenting with one day of rapidly progressive shortness of breath to the point she can only speak in one word sentences, found to be volume overloaded, cool to the touch and hypoxic to 75% on room air, requiring positive pressure ventilation to maintain an oxygen saturation of 94%. I have a high concern for cardiogenic versus septic shock. Her bedside examination as well as elevated pro-BNP and chest X-Ray findings are consistent with severe pulmonary edema. Accompanying lactic acidosis and leukocytosis to 20 cells/HPF also raise suspicion for underlying severe sepsis due to a pulmonary source. Patient’s associated severe acute kidney disease compounds the clinical picture and puts patient at high risk of further decompensation. Patient’s emergency department course was notable for drop in blood pressure with MAPs less than 65, warranting vasopressor support. Broad spectrum antibiotics were administered. Cardiology was consulted and requested the patient be placed on a Bumex drip. Patient will require extremely close monitoring in our intensive care unit given the very high risk of decompensation, as well as ongoing need for several titratable medications. Mrs Smith’s husband was updated regarding all results. I spent approximately 45 minutes at the bedside answering the family’s questions.
            """,
                 citation: "https://www.ama-assn.org/system/files/2023-e-m-descriptors-guidelines.pdf",
                 isSample: true,
                 subject: "Coding"),
        
        Question(
            imageAbove: "PatientCare",
            text: "Which of the following most impact patient rating scales?",
            options: ["Personability.", "Etiquette.", "Professionalism.", "Time factors."],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "While professionalism, personability and etiquette are all important factors in patient satisfaction, research suggests that the time-based factors are most important.\n\nSpecifically, three of the top five factors that most improved patient satisfaction with their physician were ‘ease of scheduling’, ‘minimal wait time’ and ‘not feeling rushed during their visit’. The other two factors were: ‘knowledge of treatment costs in advance’ (#2) and ‘expertise of providers’ (#4). \n\nThis evidence underscores the value of effective time-budgeting while on shift. One evidence backed method to increase perceived time spent with patients is to sit down while speaking with patients.",
            citation: "Beaver, L. (2018). The US telehealth market: The market, drivers, threats, and opportunities for incumbents and newcomers. Business Insider Intelligence Report.",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(imageAbove:"AntibioticKnight",
                 text:"What combination of antibiotics is appropriate for a critically ill, septic patient, with a pulmonary source?",
                 imageMiddle: nil,
                 options: ["Vancomycin and Zosyn.",
                           "Cefepime and Linezolid.",
                           "Doxycycline.",
                           "Vancomycin, Zosyn, Azithromycin. " ],
                 correctOptionIndex: 3,
                 imageBelow: nil,
                 explanation: """
                    Zosyn should go into the patient first, as is standard for sepsis patients, covering for the dreaded gram negative organisms, including Psuedomonas. Vancomycin is necessary because while there may be a remote possibility of MRSA in the lungs, it causes high mortality if left untreated. History of lung abscess and recent chest surgery patients are particularly concerning for MRSA infections. Finally, Azithromycin is necessary to cover for “atypicals”.
                    
                    If a patient has a penicillin allergy, switch Zosyn to Cefepime or Ceftazidime.
                    
                    If a patient has a Macrolide (Azithromycin) allergy switch to Doxy or Levaquin for atypical coverage.
                    
                    """,
                 citation: "https://med.stanford.edu/content/dam/sm/bugsanddrugs/documents/clinicalpathways/SHC-Sepsis-ABX-Guideline.pdf",
                 isSample: true,
                 videoExplain: nil,
                 video: nil,
                 subject: "Infectious Disease"),
        
        Question(text: "What is considered a normal end-tidal-CO2 range for a healthy person?",
                 imageMiddle: nil,
                 options: ["20-30 mm Hg.", "30-40 mm Hg.", "45-55 mm Hg.", "35-45 mm Hg."],
                 correctOptionIndex: 3,
                 explanation: """
                    Capnography, also commonly called “end tidal” (end-tidal CO2), is a tool which measure exhaled CO2, and is especially useful for early detection of respiratory depression and return of spontaneous circulation, during CPR.
                    
                    A normal range of “end-tidal” seen on capnography is between 35 and 45 mm Hg.
                    """,
                 citation: "https://www.nejm.org/doi/pdf/10.1056/NEJMvcm1105237",
                 isSample: true,
                 subject: "Airway"),
        
        Question(text: "A 67-year-old male with PMH of CHF presents with sudden shortness of breath. He is found by EMS to be tachypneic to 50 and hypoxic to 70% on room air. After failing non-rebreather, a CPAP is applied.\n\nWhat is one contraindication to CPAP?",
                 imageMiddle: nil,
                 options: ["Age >80.", "History of GI bleeding.", "Increased work of breathing.", "Hemodynamic instability."],
                 correctOptionIndex: 3,
                 explanation: """
                    Non-invasive positive pressure ventilation (NIPPV) for critically ill patients in either hypoxemic or hypercapnic respiratory failure has staved off innumerable intubations since its advent by allowing time for medical treatments to take effect. Patients may also benefit from NIPPV if their respiratory muscles are tiring, despite adequate oxygen saturation.
                    """,
                 citation:"https://www.merckmanuals.com/professional/critical-care-medicine/how-to-do-other-airway-procedures/how-to-do-noninvasive-positive-pressure-ventilation",
                 isSample: true,
                 subject: "Cardiology"),
        
        Question(
            text: "A 78M with hypertension develops sudden ripping back pain immediately after feeling “like he was struck in the back with a bat”.\n\nWhat is the imaging modality of choice for the correct diagnosis?",
            options: [
                "CXR.",
                "MRI.",
                "VQ Scan.",
                "CT Angio Chest."
            ],
            correctOptionIndex: 3,
            imageBelow: "Aorta",
            explanation: """
            Sudden severe back pain should trigger immediate concern for aortic dissection and a CT Angio study. The majority of dissections are Type B (descending aorta; distal to left subclavian), which are managed non-operatively with blood pressure control. You can discuss these with a vascular surgeon to confirm the plan of starting nicardipine and esmolol drips, and get them to your ICU. Goal SBP <140 and HR <100.
            
            If a patient has a type A dissection (ascending aorta), they will need surgery.
            
            In patients that don’t present with classic dissection symptoms but you are still concerned, use the combo of an AHA Aortic Dissection Score and a d-dimer. Dissection scores of 0 can have a CXR done to evaluate for widened mediastinum (>6-8cm is wide), another sign of dissection.
            
            Dissection scores of 1 with a negative d-dimer only fail in ruling out acute dissection in 0.3% of cases.
            """,
            citation: "https://www.ahajournals.org/doi/10.1161/circulationaha.110.988568#:~:text=Evaluation%20of%20patients%20with%20known,3%20is%20considered%20high%20risk. \n\nhttps://www.ahajournals.org/doi/10.1161/CIRCULATIONAHA.117.029457",
            isSample: true,
            subject: "Thoracic"),
        
        Question(text: "Which of the following scoring systems or decision rules can be used to risk stratify patients diagnosed with pulmonary embolism that can be safely managed as an outpatient?",
                 options: [
                    "LRINEC score.",
                    "CURB-65.",
                    "HAS-BLED.",
                    "PESI."
                 ],
                 correctOptionIndex: 3,
                 explanation: """
            The HOME-PE trial showed that risk stratification with either the PESI (simplified pulmonary embolism index) or Hestia criteria can identify approximately one-third of PE patients who can be safely treated at home.
            
            Both systems of risk stratification generally assess patient factors like age, sex and medical problems (CHF, bleeding history, etc.) as well as acute clinical findings like heart rate and blood pressure. Both criteria can also be easily accessed and data quickly inputted via MDCalc web app for decision support. See figures below for the comprehensive criteria.
            
            Several options for outpatient anticoagulation exist, including the most novel agents: apixaban, dabigatran, edoxaban and rivaroxaban.
            
            Of note, NOACs appear more beneficial in some aspects than classic heparin treatment, such as avoiding frequent injections and repeated monitoring for dose adjustments. Their application offers the possibility of a single oral drug regimen, replacing the use of parenteral treatment and warfarin.
            
            Although the use of NOACs/direct oral anticoagulants is well-suited to outpatient treatment, there are some contraindicated cases such as severe renal/ hepatic impairment or antiphospholipid antibody syndrome. In addition, their use is inappropriate during pregnancy or lactation.
            
            Vitamin K antagonists (VKA) appear as an alternative to NOACs, but they should be given concurrently with parenteral anticoagulation for at least 5 days and until an international normalized ratio (INR) of 2–3 is reached.
            
            The LRINEC (Laboratory Risk Indicator for Necrotizing Fasciitis) score was developed to distinguish necrotizing fasciitis (nec fasc) from severe cellulitis.
            
            Curb 65 estimates 30-day mortality of community-acquired pneumonia and is helps determine if patients can be treated outpatient versus inpatient.
            
            HAS-BLED estimates risk of major bleeding for patients with atrial fibrillation (AF) on anti-coagulation. In concert with CHA2DS2-VASc a HAS-BLED score helps clinicians decide whether to start anti-coagulation in patients with AF.
            """,
                 citation: "https://www.acc.org/Latest-in-Cardiology/Clinical-Trials/2020/08/29/12/57/HOME-PE",
                 isSample: true,
                 subject: "Airway"),
        
        Question(
            imageAbove:"Angioedema",
            text: "A 39 year old M with obesity and hypertension recently placed on lisinopril for blood pressure presents with sudden swelling of her tongue. On oral exam you observe the image above.\n\nWhat medication can be administered to reduce orolingual swelling?",
            options: ["Methylprednisolone IV.", "Epinephrine IM.", "Tranexamic acid.", "Fresh frozen plasma."],
            correctOptionIndex: 3,
            explanation: """
                    Airway management is the most critical component of angioedema patients. However, some medications are available at your disposal. Fresh frozen plasma (administered as a 2 unit infusion) and icatibant are two types of treatment for bradykinin related angioedema.
                    """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5298931/",
            isSample: true,
            subject: "Allergy"),
        
        Question(text: "A 58 year old with PMH of COPD, chronic respiratory failure status post tracheostomy arrives in your department with worsening 02 saturation from baseline of 93% to 88% on vent settings that include FiO2 100% and a PEEP of 5.\n\nWhich of the following combinations of ventilatory pressures would suggest a process in addition to COPD?",
                 options: [
                    "High peak pressure, normal plateau pressure.",
                    "Low peak pressure, normal plateau pressure.",
                    "Normal peak pressure, high plateau pressure.",
                    "High peak pressure, high plateau pressure."
                 ],
                 correctOptionIndex: 3,
                 explanation: """
            A patient with COPD who has superimposed pneumonia will present with high peak and plateau pressures.
            
            An additional diagnostic tool that can be incorporated during your evaluation of the tracheostomy patient includes hooking up a tracheostomy to the ventilator to evaluate for peak pressures as well as plateau pressure. The peak pressure will be immediately available data on your ventilator screen while you will need to select an inspiratory pause to determine plateau pressure.
            
            In general, an acceptable max peak pressure (Ppeak) is 40 (cm H20). High peak pressures reflect resistance in the entire airway (airway and alveolar resistance) and can be seen with a kinked ET tube or bronchospasm, including COPD.
            
            Elevated plateau pressures (greater than 25-30 cm H20) reflect poor lung compliance and can be seen with pneumonia, pulmonary edema, pneumothorax (you will see other expected findings such as hypotension), pulmonary fibrosis and even abdominal issues like abdominal compartment syndrome.
            """, // No image provided
                 citation: "", // No citation provided
                 isSample: true,
                 subject: "Airway"),
        
        Question(
            text: "A 76 year-old-female with PMH of cerebrovascular accident and chronic respiratory failure status post tracheostomy presents from a nearby nursing home in respiratory distress.\n\nP02 is 89%. On exam she is moving little air, but symmetrically. You notice heavy use of accessory respiratory muscles.\n\nWhat is your first course of action?",
            options: [
                "Proceed to “intubation from above”",
                "Exchange the tracheostomy tube.",
                "Fiberoptic visualization of trach tube placement.",
                "Apply a non-rebreather while suctioning the trach tube."
            ],
            correctOptionIndex: 3,
            explanation: """
            A distressed tracheostomy patient can be one of the more harrowing of clinical situations that presents in your emergency department or intensive care unit. Fortunately, several supportive guides exist, including an Emergency Algorithm from the National Tracheostomy Safety Project (see Image below). In addition to providing supplemental oxygenation via a non-rebreather to a patient’s upper oral airway, an early attempt at passing a suction catheter through the trach tube is important as mucous plugging is a common reason for airway obstruction. Often, once such an obstructive process is removed, rapid clinical improvement will be observed.
            
            If clinical improvement is not observed continue down the Emergency Algorithm, during which you should try deflating the trach tube balloon in attempt to allow for air to pass around the tube. If this fails consideration should be made to remove the tracheostomy tube completely and proceed with either oral airway maneuvers or tracheostomy stoma ventilation. If oral airway bag-valve-mask ventilation (while covering the stoma) is unsuccessful, tracheostomy stoma ventilation can be pursued by either 1) a pediatric face mask applied to the stoma or 2) an LMA applied to the stoma.
            
            These maneuvers are likely temporizing measures for a more secure airway. Intubation of all tracheostomy patients should be treated as difficult airway and supportive staff and equipment be made available. Note that a major contraindication to oral intubation is if a patient has a history of laryngectomy. In these cases there will be no communication with the oropharynx and trachea (with complete laryngectomy). If intubating through the stoma, fiberoptic assistance is preferred with use of a 6.0 cuffed ET tube. Please note that studies evaluating the utility of cutting the ET tube down to size for stoma insertion has produced mixed results, a may cause complication.
            
            An additional diagnostic tool that can be incorporated during your evaluation of the tracheostomy patient includes hooking up a tracheostomy to the ventilator to evaluate for peak pressures as well as plateau pressure. The peak pressure will be immediately available data on your ventilator screen while you will need to select an inspiratory pause to determine plateau pressure. In general, an acceptable max peak pressure (Ppeak) is 40 (cm H20). High peak pressures reflect resistance in the entire airway (airway and alveolar resistance) and can be seen with a kinked ET tube or bronchospasm.
            
            Elevated plateau pressures  (greater than 25-30 cm H20) reflect poor lung compliance and can be seen with pneumonia, pulmonary edema, pneumothorax (you will see other expected findings such as hypotension), pulmonary fibrosis and even abdominal issues like abdominal compartment syndrome.
            """,
            citation: "https://anesthesia.ucsf.edu/sites/anesthesia.ucsf.edu/files/wysiwyg/Ventilator_Pocket_Guide_2020.pdfsthesia.ucsf.edu/sites/anesthesia.ucsf.edu/files/wysiwyg/Ventilator_Pocket_Guide_2020.pdf\n\nhttps://criticalcarenow.com/differentiating-peak-and-plateau-pressures/#:~:text=The%20Debrief-,Peak%20pressure%3A%20This%20is%20the%20pressure%20that%20is%20generated%20by,tidal%20volume%20has%20been%20delivered.",
            isSample: true,
            subject: "Airway"),
    /*    Question(
            imageAbove: nil,
            text: "A 52F with ovarian cancer on chemotherapy presents to your ED with an erythematous, non-edematous and painful right lower extremity. You promptly rule out a DVT and diagnose cellulitis.\n\nYour patient demands outpatient treatment, citing numerous recent hospitalizations.\n\nAn appropriate single dose antibiotic would be:",
            options: [
                "Linezolid IM",
                "Vancomycin IM",
                "Vancomycin IV",
                "Dalbavancin IV"
            ],
            correctOptionIndex: 3,
            imageBelow: "Dalbavancin",
            explanation: "Given rapidly changing drug resistant microbiologic ecosystems, staying current with newly FDA approved antibiotics is imperative. Further, given the significant adoption of at-home-hospitals nationally, awareness of single dose, long acting formulas is critical.\n\nAs a lipoglycopeptide, dalbavancin has an extraordinarily long half-life compared to many antimicrobial agents, and as such the FDA approved a 1500 mg single dose regimen over 30 minutes for adults with acute bacterial skin and skin structure infections (ABSSSI), including MRSA. A two-dose regimen also is FDA-approved, with a 1,000 mg dose on day 1, followed by 500 mg on day 8 to complete the treatment. Both have been shown as safe and effective in multiple, randomized noninferiority trials.\n\nDalbavancin should be considered in patients with skin infections likely due to strains of S. aureus including MRSA, Streptococcus pyogenes, Streptococcus agalactiae, and the Streptococcus anginosus group.",
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4907732/",
            isSample: true,
            subject: "Infectious Disease"),
        
        Question(
            text: "Gender identity refers to:",
            options: [
                "A sense of trans- versus cis-gender.",
                "Birth certificate or registration documentation.",
                "How society perceived your sex.",
                "A changebale sense of self."
            ],
            correctOptionIndex: 3,
            explanation: """
            Gender identity refers to a person’s inner sense of self, and one’s gender identity may change over time. Examples include transgender men and women (gender identity does not match that assigned at birth), cisgender men and women (meaning a person’s gender corresponds to sex registered at birth), non-binary and gender queer.
            Gender-queer, gender-diverse, and gender-expansive describes a person who’s gender falls outside male-female binary and may include someone who identifies as nonbinary (gender of neither or both man and woman) or pangender (having multiple genders).
            """,
            citation: "Emergency Medicine News, April 2023; Vol 45 No 4. Dr Knight.",
            isSample: true,
            subject: "Bedside Manner"),
        
      Question(
            text: "In a healthcare setting, which approach best demonstrates the principles of cultural humility?",
            options: [
                "Providing standardized care protocols that are applicable to all patients, irrespective of their cultural background.",
                "Offering culturally specific treatment options exclusively to patients from certain cultural backgrounds.",
                "Adopting a color-blind approach that disregards cultural differences to promote equality in healthcare delivery.",
                "Acknowledging one's own limitations and biases while actively seeking to understand and learn from diverse cultural perspectives."
            ],
            correctOptionIndex: 3,
            explanation: """
            Cultural humility emphasizes self-reflection, recognition of one's own limitations, and an ongoing commitment to learning from and valuing diverse cultural perspectives. Option B aligns with this principle by highlighting the importance of healthcare providers being aware of their own biases, being open to learning from patients' cultural backgrounds, and actively seeking to improve their understanding. This approach promotes a respectful and equitable healthcare environment, where patients' cultural beliefs, values, and preferences are acknowledged and integrated into their care. Options A, C, and D do not fully capture the essence of cultural humility as they either disregard individual cultural differences or prioritize specific cultural groups over others, which can contribute to disparities and inequitable care.
            """,
            citation: "",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(
            text: "What patient population tends to receive an incomplete sexual history taking by their physician?",
            options: [
                "Undomiciled patients.",
                "Psychiatric patients.",
                "Domestic abuse patients.",
                "LGBTQ+ patients."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "In a 2019 study including ACGME‐accredited residency programs, even with professed comfort with LGBT health care, most emergency medicine residents report taking incomplete sexual histories. This likely affects patient care.\n\nOne traditional way to ask a sexual history question with modern day considerations would be to ask: “Do you have sex with men, women, both or others?”. \n\nIt has been estimated that at least 3.5% of Americans, or 9 million people, identify as lesbian, gay, or bisexual, although identity does not always indicate sexual behavior, as 19 million Americans (8.2%) have engaged in same‐sex sexual behavior. Another 0.6%, or 1.4 million people, identify as transgender. It has been well documented that significant barriers exist to providing quality and equitable care to the lesbian, gay, bisexual, and transgender (LGBT) population. Although limited, research demonstrates significant health care disparities exist for LGBT persons with a major contributor to those disparities being a lack of provider knowledge and competency. Such disparities are known to include elevated risk of depression and suicide, increased rates of substance abuse, increased risk for some cancers, and decreased access to health care.\n\nNo formal guidance has been provided to residency programs, and currently LGBT health education is not included in the model of emergency medicine practice. A 2014 survey showed only 26% of EM residency programs had formal education on LGBT health, although most programs directors felt education on this topic is needed.",
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6457356/",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(
            imageAbove: nil,
            text: "A, 86 year old man with past medical history of heart failure with reduced ejection fraction (HFrEF) and atrial fibrillation on Coumadin presents with a fall with head strike, severe headache and altered mental status.\n\nVitals are: HR 129 BP 220/115 RR 18 02 95%. In addition to immediate blood pressure control, what additional medication should you administer?",
            options: [
                "Fresh frozen plasma (FFP).",
                "Protamine sulfate.",
                "Platelets.",
                "Prothrombin complex concentrate (PCC)."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "In patients with intracranial hemorrhage with vitamin K antagonists like coumadin on board, prothrombin complex concentrates are preferred over FFP.\n\nFor several years, FFP and vitamin K were the preferred options for reversing anticoagulation. Prothrombin complex concentrate is now in favor when available due to quicker administration (shorter infusion times). PCC also requires only a small volume to reverse anticoagulation. Small volumes means improved safety in heart failure and CKD patients. FFP requires procurement from the blood bank and thawing before administration, factors that lead to delays in administration and anticoagulation reversal. PCC is leukocyte-free and less likely to cause infusion reactions. PCC contains significantly higher amounts of the clotting factors compared to FFP; one dose of PCC equals 8 to 16 units of FFP.\n\nProtamine is the reversal agent for unfractionated heparin and low molecular weight heparins, like enoxaparin.",
            citation: "Gross BA, Jankowitz BT, Friedlander RM. Cerebral intraparenchymal hemorrhage: a review. JAMA 2019 Apr;321(13):1295-303. PMID: 30938800 DOI: 10.1001/jama.2019.2413.\n\nhttps://www.ncbi.nlm.nih.gov/books/NBK539716/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"),
        Question(
            imageAbove: nil,
            text: "A 49-year-old female with a past medical history of depression and schizophrenia presents after a homeless man walked up behind her and stuck her with a needle. She is requesting post-exposure prophylaxis (PEP) for HIV. What is the most suitable regimen?",
            options: [
                "Dolutegravir plus bictegravir.",
                "Single drug regimen tenofovir alafenamide.",
                "Elbasvir-grazoprevir plus dolutegravir.",
                "Emtricitabine/Tenofovir plus raltegravir."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "Emtricitabine/Tenofovir (200/300mg) daily combined with raltegravir (400mg) twice a day is an acceptable regimen for HIV post-exposure prophylaxis (PEP). A 28-day course is recommended.\n\nEmtricitabine/Tenofovir is a combination of nucleoside and nucleotide reverse transcriptase inhibitors, while raltegravir is an integrase inhibitor. Patients presenting within 72 hours of a potential HIV exposure should be assessed for nonoccupational PEP (nPEP) to reduce the risk of transmission.\n\nIn cases where the HIV source is known to have a multidrug-resistant virus, dolutegravir may be preferred over raltegravir.\n\nSpecial considerations for regimen selection apply to certain patient groups (e.g., individuals who are of childbearing potential, pregnant, or have reduced kidney function). Emtricitabine/Tenofovir should be avoided in patients with an eGFR below 60 mL/min. For an eGFR between 30 and 60, tenofovir alafenamide combined with either dolutegravir or bictegravir is recommended. For an eGFR below 30, an integrase inhibitor (dolutegravir, bictegravir, or raltegravir) can be paired with dose-reduced zidovudine or lamivudine.\n\nAfter discontinuing nPEP, repeat HIV testing at weeks 6 and 12 is recommended to monitor for seroconversion. Patients with possible HIV exposure should also be evaluated for HBV and HCV, though no treatments are available to reduce HCV transmission risk post-exposure.\n\nElbasvir-grazoprevir is a well-tolerated, effective option for treating hepatitis C virus (HCV) genotype 1 or 4 but is not indicated for HIV PEP.",
            citation: "United States Centers for Disease Control and Prevention. Updated guidelines for antiretroviral postexposure prophylaxis after sexual, injection drug use, or other nonoccupational exposure to HIV—United States, 2016. http://stacks.cdc.gov/view/cdc/38856\n\nhttps://www.hepatitisc.uw.edu/page/treatment/drugs/elbasvir-grazoprevir/drug-summary",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"),
        Question(
            imageAbove: nil, // Image suggestion: oral examination showing swelling in the floor of the mouth, indicative of Ludwig’s angina.
            text: "A 65-year-old male with a past medical history notable for type 2 diabetes mellitus presents with five days of progressive pain with swallowing and one day of difficulty swallowing water. He recently had dental work. Upon oral examination, you observe swelling as shown in the image below. What is the correct treatment?",
            options: [
                "Surgical excision.",
                "Fresh frozen plasma (FFP) and Icatibant.",
                "Sialogogues, warm compress, and Augmentin.",
                "Broad spectrum antibiotics by IV."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "Swelling of the floor of the mouth, particularly in a diabetic patient with recent dental work and progressive subacute to acute swelling, raises concern for Ludwig’s angina—a cellulitis of the floor of the mouth. This infection often follows dental procedures and presents without lymphadenopathy. Submental edema is another significant indicator for this serious infection. A CT scan is the diagnostic modality of choice.\n\nTreatment for immunocompetent patients should include broad-spectrum antibiotic coverage for streptococci and other oral aerobes and anaerobes. For pediatric patients and adults with MRSA risk factors, additional MRSA coverage such as vancomycin or linezolid is recommended. For immunocompromised patients, empiric therapy should also cover Pseudomonas species (e.g., with Zosyn, Levaquin, cefepime, or ceftazidime).\n\nSurgical excision is the appropriate treatment for a ranula, which is a sublingual gland cyst presenting as a bubble of salivary juices under the tongue.\n\nFresh frozen plasma (FFP) and icatibant are treatments for bradykinin-related angioedema, which can be triggered by ACE inhibitors or hereditary factors. Angioedema management typically involves distinguishing between mast cell-mediated (e.g., allergic) and bradykinin-mediated angioedema.\n\nSialogogues, warm compresses, and antibiotics are standard for treating sialadenitis, which usually presents with unilateral swelling and lacks floor-of-mouth involvement.",
            citation: "United States Centers for Disease Control and Prevention. Updated guidelines for antiretroviral postexposure prophylaxis after sexual, injection drug use, or other nonoccupational exposure to HIV—United States, 2016. http://stacks.cdc.gov/view/cdc/38856\n\nhttps://www.hepatitisc.uw.edu/page/treatment/drugs/elbasvir-grazoprevir/drug-summary",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"),
        Question(
            imageAbove: nil, // Image suggestion: chest X-ray showing severe pneumonia
            text:"""
                A 68-year-old male with a past medical history of type 2 diabetes mellitus presents to your emergency department with a productive cough and shortness of breath so severe he cannot take more than a few steps without stopping to catch his breath.
                
                Vitals: HR 123, BP 160/74, RR 28, O2 80% on room air and 94% on positive pressure ventilation (PPV). His chest X-ray is shown below.
                
                After administering antibiotics and admitting the patient to the ICU for severe pneumonia, you decide to order this evidence-based treatment:
                """,
            options: [
                "IV vitamin-D (high dose).",
                "PO prednisone.",
                "IV Calcium.",
                "IV Hydrocortisone."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "In a March 2023 NEJM study, patients with severe community-acquired pneumonia who received intravenous hydrocortisone (200 mg daily) showed reduced mortality as well as decreased need for mechanical ventilation and vasopressor support.\n\nCommunity-acquired pneumonia (CAP) refers to pneumonia caused by an infectious agent contracted outside of medical facilities or healthcare settings. A CAP diagnosis may still be established within 48 hours of hospital admission.\n\nThe most common causative agent of CAP worldwide is *Streptococcus pneumoniae*.\n\nThe NEJM study included a phase 3, multicenter, double-blind, randomized controlled trial with 800 ICU-admitted adults with severe CAP. Participants were given either intravenous hydrocortisone (200 mg daily for 4 to 8 days depending on clinical response, followed by a taper for a total of 8 to 14 days) or a placebo, alongside standard therapy (antibiotics and supportive care).\n\nBy day 28, mortality occurred in 25 of 400 patients (6.2%; 95% CI, 3.9 to 8.6) in the hydrocortisone group versus 47 of 395 patients (11.9%; 95% CI, 8.7 to 15.1) in the placebo group (absolute difference, −5.6 percentage points; 95% CI, −9.6 to −1.7; P=0.006), yielding a number needed to treat of 18.\n\nSecondary endpoints, such as the need for mechanical ventilation and vasopressor support, were also reduced in the hydrocortisone group (18% vs. 30% and 15% vs. 25%, respectively).",
            citation: "https://www.nejm.org/doi/10.1056/NEJMoa2215145",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"),
        Question(
            imageAbove: nil,
            text: "In patients who are septic but may clinically worsen with a large fluid bolus due to comorbidities (e.g., chronic heart failure with volume overload or dialysis patients), what is the best method to determine volume status before administering fluids?",
            options: [
                "Echo results with ejection fraction from 3 years prior.",
                "Heart rate and JVD.",
                "“Warm and Wet” versus “Cold and Wet”.",
                "Bedside IVC Ultrasound and Fluid Challenge."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: ultrasound showing a collapsing inferior vena cava (IVC) for assessing volume status
            explanation: "Learning to assess the inferior vena cava (IVC) with bedside ultrasound is an invaluable skill for ER or ICU practitioners.\n\nA collapsing IVC or one with significant respiratory variation is highly sensitive and specific for hypovolemia, indicating that the patient can generally tolerate fluid administration. After fluids are given, the IVC can be re-evaluated to assess the patient's fluid responsiveness.\n\nIf the IVC view is technically challenging, a fluid challenge of 250cc or 500cc isotonic solution can be administered. A rise in blood pressure following this challenge suggests hypovolemia, while no change or a decrease may indicate an adequate or overloaded volume status. For patients with severely weakened cardiac function (e.g., ejection fraction of 20-30%), a 250cc challenge is preferable, while more stable patients may tolerate up to 500cc or even 1L. Frequent reassessment is essential to avoid fluid overload and prevent iatrogenic pulmonary edema.\n\nAn echocardiogram with ejection fraction data from 3 years ago may offer some insight, especially if it shows severe impairment, but this information may be outdated. Heart rate is of limited value, as both dehydrated and volume-overloaded patients can present with tachycardia. Jugular venous distention (JVD) can be useful but typically requires experienced assessment.\n\nAdditional clues can aid in determining volume status but should be used cautiously:\n- Historical factors, such as family reports of reduced intake (e.g., “hasn’t eaten a meal in weeks”).\n- Patient's dry weight, as noted in cardiology records or reported by the patient.\n- Physical exam findings, such as axillary sweat and mucous membrane moisture.\n- Urine output, noting color and volume relative to baseline.",
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            imageAbove: nil,
            text: "What is the correct loading dose of vancomycin for critically ill patients?",
            options: [
                "10mg/kg",
                "16mg/kg",
                "36mg/kg",
                "25mg/kg"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "Recently updated consensus guidelines on vancomycin recommend a loading dose of 20–35 mg/kg based on actual body weight (not exceeding 3000 mg) for critically ill patients with suspected or confirmed MRSA infection. This approach helps achieve appropriate serum concentrations rapidly.\n\nConsulting a pharmacist on antibiotic dosing may be beneficial, especially when vancomycin is combined with another potentially nephrotoxic agent. For instance, the combination of vancomycin and Zosyn has a higher risk of acute kidney injury (AKI) than either drug used alone.",
            citation: "Rybak MJ, Le J, Lodise TP, et al. Therapeutic monitoring of vancomycin for serious methicillin-resistant Staphylococcus aureus infections: a revised consensus guideline and review by the American Society of Health-System Pharmacists, the Infectious Diseases Society of America, the Pediatric Infectious Diseases Society, and the Society of Infectious Diseases Pharmacists. Am J Health Syst Pharm 2020; 77: 835–864.\n\nhttps://pubmed.ncbi.nlm.nih.gov/29649586/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pharmacology"
        ),
        Question(
            imageAbove: nil,
            text: "A 32-year-old male presents 48 hours after being bitten by a spider. He took a picture of a spider he found in his room shortly after the bite. A picture of his wound upon presentation is shown below. What is the culprit spider?",
            options: [
                "Black widow",
                "Kukulcania",
                "Tarantula",
                "Recluse spider (genus Loxosceles)"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: photo of wound with central clearing or necrosis, indicative of a recluse spider bite
            explanation: "The recluse spider (genus *Loxosceles*) often causes a painless bite that develops into a reddish wound with central clearing or necrosis. Management depends on the severity of cutaneous effects and the presence of systemic toxicity. General wound care and tetanus prophylaxis are essential. Dermal necrosis is typically managed supportively, except in cases involving certain South American recluse variants, where antivenom may be considered.\n\nSystemic toxicity from a recluse spider bite, though rare, can include acute hemolytic anemia, rhabdomyolysis, and disseminated intravascular coagulation (DIC).\n\nThe recluse spider is often mistaken for the Kukulcania, which has a velvety appearance, as shown below.",
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            imageAbove: nil,
            text: "A 68-year-old gender fluid person with a past medical history of breast cancer (never on chemotherapy) and obesity (92 kg) presents with lightheadedness and decreased exercise tolerance over the past two weeks. Vitals are normal except after walking to the bathroom and sitting on the hospital gurney, where a single lead monitor shows a heart rate of 106. You order a CT Angio Chest and find bilateral pulmonary emboli with right heart strain. During reassessment, the patient becomes severely lightheaded. Blood pressures measured 15 minutes apart are 82/40 and 86/39. Your hospital stocks tenecteplase as a fibrinolytic. What is the correct dose for pulmonary embolism?",
            options: [
                "100 mg IV over 2 hours.",
                "100 mg IV over 4 minutes.",
                "100 mg IV over 5-10 seconds.",
                "50 mg IV over 5-10 seconds."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: chart or table of weight-based dosing for tenecteplase
            explanation: "Tenecteplase (TNKase, TNK-tPA, or TNK) is a thrombolytic agent derived from tissue plasminogen activator (tPA). Unlike alteplase, which requires a 2-hour infusion, tenecteplase can be administered as a single intravenous bolus over 5 to 10 seconds due to its long half-life. Additionally, tenecteplase is less likely to cause allergic reactions compared to antigenic agents like streptokinase.\n\nKnowing fibrinolytic dosing is crucial, especially for unstable patients, as timely administration can significantly impact outcomes. The recommended code dose of tenecteplase for unstable pulmonary embolism (PE) is 50 mg over 5-10 seconds, which applies to this case. Tenecteplase is weight-based (see weight-based chart for precise dosing).\n\nAfter administering the bolus, initiate or resume parenteral anticoagulation following thrombolytic administration.\n\nOther dosing details:\n- 100 mg IV over 2 hours is the correct dose of alteplase for unstable PE.\n- 100 mg IV over 4 minutes would be the cumulative dose of alteplase given during cardiac arrest, administered as two separate 50 mg boluses over 2 minutes, 15 minutes apart, if ROSC is not achieved after the initial bolus.\n\nIn this case, the single-bolus administration of tenecteplase makes it an efficient choice in time-sensitive clinical situations.",
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9008780/#:~:text=Compared%20with%20existing%20thrombolytic%20agents,reactions%20(15%E2%80%9318)\n\nhttps://emcrit.org/pulmcrit/pulmcrit-solving-the-optalyse-pe-riddle-were-dosing-tpa-wrong/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil, // Image suggestion: photo of shingles rash
            text: "You see the above rash. The patient is concerned that she is contagious. What precautions do you advise?",
            options: [
                "Contact only.",
                "Airborne only.",
                "Droplet.",
                "Contact and Airborne."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "People with herpes zoster, commonly known as shingles (a reactivation of the varicella-zoster virus), can spread the virus through direct contact with lesions and, to a lesser extent, via airborne transmission. Therefore, both contact and airborne precautions are recommended to prevent the spread of the virus.",
            citation: "Dworkin RH, Johnson RW, Breuer J, et al. Recommendations for the management of herpes zoster. Clin Infect Dis 2007; 44 Suppl 1:S1.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            imageAbove: nil,
            text: "What is the dose of phenobarbital for alcohol withdrawal?",
            options: [
                "130 mg followed by 130 mg every 5 minutes.",
                "260 mg followed by 260 mg every 2-3 minutes.",
                "130 mg or 260 mg followed by 260 mg every 5 minutes.",
                "130 or 260 mg followed by 130 mg every 15 to 30 minutes."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: depiction of phenobarbital dosing schedule or alcohol withdrawal management setting
            explanation: "The recommended dose of phenobarbital for severe alcohol withdrawal is 130 or 260 mg initially, followed by 130 mg every 15 to 30 minutes as needed.\n\nPhenobarbital, a barbiturate, functions by increasing the duration that chloride ion channels remain open in the brain, thus reducing neuronal excitability.\n\nStudies indicate similar effectiveness between phenobarbital and benzodiazepines for managing alcohol withdrawal syndrome. A recent study from Canada (Journal of Alcohol, Aug 2022) reviewed 184 cases and found that, after adjusting for confounders, presentations treated with phenobarbital were 71.3% less likely to require hospital admission (p = 0.03).",
            citation: "Pistore A, Penney S, Bryce R, Meyer C, Bouchard B. A retrospective evaluation of phenobarbital versus benzodiazepines for treatment of alcohol withdrawal in a regional Canadian emergency department. Alcohol. 2022 Aug;102:59-65. doi: 10.1016/j.alcohol.2022.05.001. Epub 2022 May 13. PMID: 35569673.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pharmacology"
        ),
        Question(
            imageAbove: nil,
            text: "What is McConnell’s sign?",
            options: [
                "Peri-umbilical ecchymosis on exam.",
                "Flank ecchymosis on exam.",
                "An ultrasound finding of RV bowing in the LV.",
                "An ultrasound finding of RV akinesis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: ultrasound showing RV free wall akinesis with sparing of the apex
            explanation: """
        McConnell’s sign on ultrasound is characterized by right ventricular (RV) free wall akinesis with sparing of the apex. This finding appears as if the apex of the RV is ‘bouncing’ like a trampoline while the rest of the RV wall remains still.

        The diagnosis of sub-massive (non-hemodynamically significant) pulmonary embolism (PE) is challenging due to the patient's apparent stability, which can change rapidly. Point-of-care ultrasound (POCUS) provides crucial diagnostic insight in evaluating PE, especially when rapid deterioration is a concern.

        While McConnell’s sign is not highly sensitive (22%), it is 97% specific, making it a valuable finding in the immediate clinical setting.

        Umbilical ecchymosis is known as Cullen’s sign. In trauma patients, Cullen’s sign can indicate rectus sheath hematoma, splenic rupture, or acute hemorrhagic pancreatitis. It has also been associated with other conditions, such as perforated ulcers, intra-abdominal cancer, ruptured ectopic pregnancy, and anticoagulation complications.

        Grey Turner sign, which refers to ecchymosis of the flanks, may appear alongside Cullen’s sign, particularly in cases of retroperitoneal hemorrhage.

        RV bowing into the LV is another ultrasound finding associated with acute pulmonary hypertension, including PE, but it is not McConnell’s sign. In a standard four-chamber view, the RV:LV ratio should ideally be around 1:1.
        """,
            citation: """
        https://www.jacc.org/doi/10.1016/j.jaccas.2022.05.007#:~:text=McConnell's%20sign%20has%20long%20been,high%20specificity%20for%20acute%20PE.&text=A%20recent%20meta%2Danalysis%20in,the%20detection%20of%20acute%20PE.

        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3312052/#:~:text=successful%20acute%20management.-,Cullen's%20sign%20is%20described%20as%20superficial%20oedema%20with%20bruising%20in,a%20result%20of%20haemorrhagic%20pancreatitis.
        """,
            isSample: true,
            videoExplain: nil, // Video suggestion: video demonstrating McConnell's sign on ultrasound
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            imageAbove: nil,
            text: "For patients presenting with typical chest pain, aside from the activity of chest pain (active or inactive), which factors most influence disposition?",
            options: [
                "PERC Score",
                "Wells Score and follow-up",
                "AHA Aortic Dissection Score",
                "HEART score and fidelity of follow-up"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        The HEART score should be used to initially risk stratify patients into low, medium, or high risk, estimating the likelihood of a major cardiac event in the coming days.

        Disposition for low- and high-risk patients is generally straightforward: low-risk patients can usually be discharged home, while high-risk patients should be admitted with consideration for early intervention. In high-risk cases, it is advisable to consult or at least inform cardiology of the admission.

        Some low-risk patients may warrant higher consideration, such as those with a family history of early cardiac events (e.g., a father who died of a massive MI in his 40s) or those with unknown comorbidities due to a lack of recent medical care.

        The moderate-risk group often requires the most deliberation regarding disposition. The likelihood of a patient being able to follow up with their PCP or cardiologist for further testing is the main determinant of whether a moderate-risk patient can be safely discharged or should be admitted.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: "For patients presenting with typical chest pain, what initial question must be answered to determine disposition?",
            options: [
                "Do they also feel short of breath or nauseous?",
                "Are they of limited resources and have difficulty obtaining follow-up?",
                "What zip code do they live in?",
                "Are they still having active chest pain?"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Patients experiencing active chest pain should not be discharged. In cases of unstable angina (normal troponin and ECG), some patients may require intervention in the cardiac catheterization lab, particularly if chest pain persists despite treatment with nitroglycerin drip and other analgesia, including morphine.

        While access to follow-up care is an important consideration in discharge decisions, the primary determination is whether the patient is clinically stable and a suitable candidate for home discharge.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: "What is typical chest pain?",
            options: [
                "Burning epigastric pain.",
                "Stabbing substernal pain worse with breathing.",
                "Crushing pain in the back during an emotional argument.",
                "Substernal, exertional, better with rest or nitroglycerin."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Pain that meets all three of the following criteria is considered “typical chest pain”: it is substernal, exertional, and improves with rest or nitroglycerin. This classification is significant as it indicates a concern for acute coronary syndrome (ACS), which includes STEMI, NSTEMI, or unstable angina. When fewer than three of these criteria are met, the pain is considered “atypical.”

        Additionally, dull, heavy, crushing pain radiating to the arm or jaw is also regarded as “typical” for ACS.

        Certain patient groups often present with atypical symptoms yet may still be experiencing ACS. These include genetically female patients, diabetics, and cardiac transplant recipients, who may instead report dyspnea, fatigue, or syncope due to altered cardiac neural innervation.

        It is also worth noting that while coronary artery disease affects the epicardial vessels, subendocardial ischemia is an emerging area of interest in cardiology.
        """,
            citation: """
        https://www.ahajournals.org/doi/10.1161/JAHA.119.015539

        https://jdc.jefferson.edu/cgi/viewcontent.cgi?article=1084&context=cardiologyfp#:~:text=Thus%2C%20most%20patients%20who%20have,or%20rhythm%20changes%20(6).
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: "A 20-year-old presents to your ER with one week of mild pleuritic chest pain preceded by URI symptoms. You diagnose pericarditis based on ECG findings. You send a troponin because the patient's mother is concerned about myocarditis and insists on the test. The troponin is normal.\n\nWhen can the patient safely return to soccer practice?",
            options: [
                "When symptoms become very mild.",
                "After 7 days of NSAIDs.",
                "After clearance by the PCP.",
                "At least one month."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: diagram or timeline depicting recommended rest period for pericarditis patients before resuming sports
            explanation: """
        The American College of Cardiology recommends exercise restriction until complete resolution of symptoms or a minimum of 1 to 3 months. Some expert guidelines suggest varying durations after symptom resolution before resuming regular exercise, especially for athletes.

        The primary concern with returning to sports too soon is the risk of life-threatening dysrhythmias.

        A gradual exercise reintroduction schematic has been published by the American College of Cardiology to guide safe return to physical activity.

        NSAIDs can aid in symptom resolution. Naproxen 500mg BID is a commonly recommended option due to its twice-daily dosing and lower risk of gastrointestinal side effects.
        """,
            citation: "https://www.acc.org/latest-in-cardiology/articles/2022/09/06/11/53/pericarditis-in-athletes#:~:text=Exercise%20restriction%20is%20recommended%20until,in%20disease%20severity%20and%20course.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
       Question(
            imageAbove: nil,
            text: "What is the gold standard for diagnosing pulmonary embolism?",
            options: [
                "VQ Scan",
                "CXR",
                "MRI Chest",
                "CT Angiography of the Chest"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        CT Angiography (CT Angio) of the chest is the gold standard for diagnosing pulmonary embolism (PE). This differs from a standard CT chest with contrast, as the timing of contrast administration in CT Angio is specifically optimized to visualize the pulmonary arteries. Importantly, the contrast dose used in CT Angio is not typically sufficient to induce nephropathy.

        In patients who are allergic to contrast material, a VQ scan can be used as an alternative. However, it is only suitable for patients with normal baseline lung function and a normal chest X-ray (CXR), as the test relies on matching ventilation and perfusion.

        A CXR is not sensitive for detecting PE. However, it may reveal Westermark’s sign, an indication of reduced vascularity on one side due to obstructed flow in a pulmonary artery, also known as oligaemia.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        
        Question(
            imageAbove: nil,
            text: """
            A 69-year-old female with a past medical history of CHF, COPD, CKD, and CAD experiences sudden onset shortness of breath.
            
            En route to the ER, EMS administers nitroglycerin due to crackles and presumed pulmonary edema.
            
            What is the quickest modality to evaluate for pulmonary edema, and what findings would be consistent with this diagnosis?
            """,
            options: [
                "Kerley-B lines on CXR",
                "Ground glass opacities on CT Chest",
                "Ground glass opacities on MRI",
                "B-lines on bedside ultrasound"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: ultrasound with B-lines in the anterior superior lung fields
            explanation: """
        More than three B-lines on each side of the anterior superior lung fields (just under the clavicles bilaterally) is suggestive of congestive heart failure (CHF). Unilateral B-lines (minimum of three) are more commonly associated with pneumonia.

        A rapid diagnosis is crucial in cases of flash pulmonary edema, where prompt initiation of a nitroglycerin drip and positive pressure ventilation can help prevent intubation. While medications like Lasix and morphine are also beneficial, their effects are less immediate.

        Kerley-B lines may also indicate pulmonary edema, but obtaining a chest X-ray typically takes longer than a bedside ultrasound.
        """,
            citation: "https://radiopaedia.org/articles/septal-lines-in-lung-1?lang=us",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            imageAbove: nil,
            text: "A 69-year-old female with a past medical history of CHF, COPD, CKD, and CAD experiences sudden onset shortness of breath. En route to the ER, EMS administers nitroglycerin due to crackles and presumed pulmonary edema.\n\nInitial BP is 210/117, and bedside ultrasound shows B-lines on both sides, confirming EMS suspicion.\n\nYou decide to initiate BiPAP and medications. Which medications should you choose?",
            options: [
                "Esmolol gtt, Hydralazine IV, Lasix IV",
                "Lasix IV, Aspirin PO, Atorvastatin PO",
                "Lasix IV, Morphine and Zofran IV",
                "Nitroglycerin gtt, Lasix IV, Morphine IV"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: BEFORE - distressed patient with cyanosis; AFTER - patient on CPAP with IV labeled 'Nitro' looking comfortable
            explanation: """
        The primary goal in this scenario is to reduce blood pressure rapidly. A nitroglycerin drip should be initiated promptly, usually in the range of 50-200 µg/min, depending on the severity of respiratory distress and the urgency to prevent intubation.

        Starting at lower doses, like 5 or 10 µg/min, may not be sufficient in severe cases, though they may be appropriate in certain situations. It’s important to remember that a single sublingual nitroglycerin tablet contains 400 µg, so starting higher on the drip may be warranted. The rate can always be adjusted down or paused as needed.

        Additionally, a large dose of Lasix, typically around 80-100 mg IV, is common in these situations. Morphine can also help reduce sympathetic surge and preload, aiding in symptom relief.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        
        Question(
            imageAbove: nil,
            text: """
        A 67-year-old male presents with a productive cough and shortness of breath. A chest X-ray shows pneumonia.

        What decision rule can be used to help determine mortality risk and the need for admission?
        """,
            options: [
                "LRINEC Score",
                "PLASMIC Score",
                "ISTH Criteria",
                "CURB-65"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: checklist or multiple images depicting CURB-65 criteria (confusion, rapid breathing, kidney injury, low BP)
            explanation: """
        The CURB-65 score helps predict 30-day mortality risk for patients with pneumonia. Scores correspond to risk levels: 1 point indicates low risk (~3% mortality), 2 points indicate moderate risk (~7% mortality), and 3 or more points indicate severe risk (14%+ mortality).

        The CURB-65 criteria include the following:
        - Age > 64 years
        - Confusion
        - BUN > 19 mg/dL
        - Respiratory rate > 29 breaths per minute
        - Systolic blood pressure < 90 mmHg or diastolic blood pressure < 60 mmHg

        Each of the other answer options has a different application:
        - The LRINEC Score assesses the risk of necrotizing soft tissue infection, indicating the need for surgical consultation.
        - The PLASMIC Score aids in stratifying the risk of thrombotic thrombocytopenic purpura (TTP).
        - The ISTH Criteria is used to evaluate the risk of disseminated intravascular coagulation (DIC).
        """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3198487/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            imageAbove: nil,
            text: """
        What common medical problem and related treatment impacts the interpretation of WBCs and leukocytosis?
        """,
            options: [
                "Diabetes Mellitus",
                "NSTEMI",
                "Gastroenteritis",
                "COPD"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Any condition that is acutely treated with steroids, such as prednisone, can cause an increase in WBCs in a dose-dependent manner. This rise is predominantly due to an increase in polymorphonuclear (PMN) white cells. “Bands,” or immature neutrophils, can help distinguish an iatrogenic rise from leukocytosis caused by infection. A bandemia with 6-10% bands or more is likely associated with infection.

        Other conditions that may prompt a check for steroid use include inflammatory bowel disease (IBD) like Crohn’s and ulcerative colitis, rheumatoid arthritis, lupus, and other autoimmune or inflammatory conditions.
        """,
            citation: "https://www.amjmed.com/article/0002-9343(81)90363-6/pdf",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            imageAbove: nil,
            text: """
        Which has been shown to be most successful for smoking cessation?
        """,
            options: [
                "Nicotine Lozenge",
                "Nicotine Gum",
                "Nicorette Patch",
                "Dual nicotine replacement therapy (NRT)"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        The most effective smoking cessation method is dual nicotine replacement therapy (NRT), which combines a nicotine patch with either a lozenge or gum. The strength of the patch should be chosen based on the number of cigarettes smoked per day. For individuals smoking more than 10 cigarettes daily, the highest concentration (21 mg) is recommended. Lower doses (7 mg or 14 mg) can be used based on clinical discretion.

        Patients should use the lozenge or gum based on their preference, typically every 1-2 hours as needed to manage cravings.
        """,
            citation: "https://www.cdc.gov/tobacco/campaign/tips/quit-smoking/quit-smoking-medications/how-to-use-quit-smoking-medicines/how-to-use-a-nicotine-patch.html#:~:text=The%20nicotine%20patch%20comes%20in,so%20by%20your%20healthcare%20provider.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            imageAbove: nil,
            text: """
        Scenario: An awake and alert 82-year-old female with COPD presents with sudden severe shortness of breath. When EMS arrives, they place her on a non-rebreather, achieving an oxygen saturation of 98%. However, her respiratory rate remains at 40, and she exhibits significant accessory muscle use in her thorax and neck as she “sucks in air.” Your first move is:
        """,
            options: [
                "Place an IV and administer methylprednisolone 125mg.",
                "Administer a DUONEB (albuterol and ipratropium)",
                "Give IV magnesium",
                "Call RT for BIPAP"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: BiPAP application or illustration of accessory muscle use in respiratory distress
            explanation: """
        Widespread adoption of positive pressure ventilation (PPV) in the ER has prevented many patients from requiring intubation. Early use of PPV is essential, especially for patients with a significantly increased work of breathing, evidenced by tachypnea and visible distress. Another indication to initiate BiPAP is persistent hypoxia despite a non-rebreather mask.

        So, which PPV mode should be selected? CPAP is generally used for CHF, while BiPAP is preferred for obstructive conditions like asthma and COPD. An additional consideration is frailty or hypotension in patients, as they may experience a blood pressure drop when PPV is started. In these cases, it is recommended to start with low PEEP: 5 for CPAP or 12/5 for BiPAP.

        The scenario specifies “an awake” patient, as patients need to be sufficiently alert to use PPV; traditionally, they must be able to remove the mask themselves if they begin to vomit. If an RT is available to stay with the patient, slightly altered mental statuses may be acceptable.

        Ideally, PPV should be continued for at least 4 hours, as removing it too soon increases the risk of decompensation, even if the patient initially appears improved.

        While steroids like methylprednisolone are beneficial, they take over an hour to show effects. DUONEB may have a quicker onset than steroids, but it is not as effective as PPV for critically ill patients in respiratory extremis.

        Lastly, while the role of magnesium in COPD is debated (it is more established in asthma), there is some evidence it can reduce the need for PPV in COPD.
        """,
            citation: """
        https://pubmed.ncbi.nlm.nih.gov/35616126/

        https://journals.lww.com/em-news/fulltext/2021/06000/what_to_d_o___steer_clear_of_magnesium_for_copd.2.aspx
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A single dose of what antibiotic is sufficient to treat uncomplicated UTI?
        """,
            options: [
                "Macrobid",
                "Amoxicillin",
                "Cipro",
                "Fosfomycin"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Fosfomycin, given as a single 3-gram dose dissolved in water, is an effective treatment for uncomplicated urinary tract infections (UTIs).

        Macrobid (nitrofurantoin) is also an excellent first-line choice for uncomplicated UTI and is safe for use in pregnancy.

        Amoxicillin was previously used as a first-line agent for asymptomatic bacteriuria in pregnancy, but it is no longer recommended due to increasing resistance.

        Ciprofloxacin (Cipro) is often reserved for complicated UTIs, such as cases with ascending infection (pyelonephritis) or UTIs in males.
        """,
            citation: "https://www.aafp.org/pubs/afp/issues/2000/0201/p713.html",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            imageAbove: nil,
            text: """
        An 83-year-old female with a chronic indwelling Foley catheter from a nursing home presents with altered mental status and cloudy urine. Her family notes that she often exhibits these symptoms during urinary tract infections. What is your management approach?
        """,
            options: [
                "Start Ceftriaxone and admit patient for monitoring.",
                "Start Keflex and send patient back to the facility with strict return precautions.",
                "Flush the Foley to clear debris and initiate Macrobid.",
                "Exchange the Foley and place patient on Bactrim."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of a urinary Foley catheter
            explanation: """
        The appropriate management involves exchanging the Foley catheter and starting the patient on Bactrim. Other potential antibiotic choices include a cephalosporin or a fluoroquinolone (FQ); however, FQs are often avoided in elderly patients as they can exacerbate confusion.

        The key aspect of this case is recognizing the need for source control by promptly exchanging the Foley catheter.

        Note that the primary indications for a chronic indwelling Foley catheter are urinary incontinence and retention.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            imageAbove: nil,
            text: """
        An agitated patient presents to the ER swinging violently at staff and screaming nonsensical language. You need to administer the quickest onset sedative. Which of the following options has the fastest onset?
        """,
            options: [
                "Olanzapine",
                "Haloperidol",
                "Lorazepam",
                "Midazolam"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of an intramuscular injection
            explanation: """
        A 2021 study published in *The Lancet* found that Midazolam 5mg IM provided faster sedation in patients with undifferentiated agitation in the ER compared to olanzapine and haloperidol (also administered as 5mg IM). Midazolam and olanzapine were recommended over haloperidol due to haloperidol’s slower time to sedation and its potential for cardiovascular and extrapyramidal side effects.
        """,
            citation: "https://www.thelancet.com/journals/eclinm/article/PIIS2589-5370(21)00031-6/fulltext#:~:text=Midazolam%20resulted%20in%20faster%20sedation,cardiovascular%20and%20extrapyramidal%20side%20effects.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Emergency Medicine"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 46-year-old male with a remote history of DVT, status post IVC filter placement nine months ago, presents following a 2-minute episode where he "could not get any words out." His wife reported that the few words he managed were nonsensical, and he dropped his coffee from his right hand while struggling to lift his right arm and leg.

        Upon arrival at the ER, his neurological exam is normal. After a negative CT head, you plan to admit the patient for an MRI. How should further imaging be managed in the setting of an existing IVC filter?
        """,
            options: [
                "Forego further imaging as IVC filters are metal.",
                "Cover the IVC filter with special refractive material during MRI.",
                "Perform a CT head with contrast.",
                "Determine the filter type as some are MRI compatible."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: MRI safety considerations or an illustration of IVC filter placement
            explanation: """
        IVC filters are typically made from either nitinol (titanium) or stainless steel. Nitinol filters, being titanium-based, are MRI compatible and can safely undergo MRI.

        Currently, there is no refractive material that can safely shield an IVC filter in an MRI environment. A CT with contrast may be appropriate for other conditions, such as a brain abscess, but is not typically used in stroke evaluation.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Radiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 19-year-old male presents with right lower quadrant pain, fever, and vomiting. You decide to order a CT abdomen/pelvis with contrast, given the approximate 5-10% increase in sensitivity for diagnosing appendicitis with a contrast study. The patient's mother expresses concern, asking, “What about kidney injury from the contrast?”

        Your response should be:
        """,
            options: [
                "“You’re right but we will hydrate him first, which reduces the risk.”",
                "“Yes, but we need the scan anyway.”",
                "“Let’s pass on a CT and do an ultrasound. The sensitivity of an ultrasound should be sufficient.”",
                "“There is no good evidence that kidney injury results from intravenous contrast for CT imaging.”"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of CT with contrast or kidneys
            explanation: """
        “There is no good evidence that kidney injury results from intravenous contrast for CT imaging” is correct. Current research indicates that intravenous contrast for CT does not significantly increase the risk of kidney injury. In contrast, intra-arterial contrast, often used during certain procedures, has been associated with kidney injury.

        Ultrasound has only about 35% sensitivity for diagnosing appendicitis, with the rate dropping to 22% in obese patients.

        It’s also worth noting that older gadolinium-based contrast agents (for MRI) are linked with nephrogenic systemic fibrosis in patients with advanced kidney injury. This condition primarily causes cutaneous issues but can involve multiple organ systems.
        """,
            citation: """
        https://pubmed.ncbi.nlm.nih.gov/21811194/
        https://emcrit.org/ibcc/contrast/
        https://www.mayoclinic.org/diseases-conditions/nephrogenic-systemic-fibrosis/symptoms-causes/syc-20352299#:~:text=Nephrogenic%20systemic%20fibrosis%20is%20a,large%20areas%20of%20the%20skin.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Radiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 49-year-old male with a history of hyperlipidemia presents with sharp right-sided chest pain that started one hour prior to arrival while he was resting on his couch. The pain resolved after two minutes.

        The patient reports that six years ago, his cardiologist conducted a stress test followed by coronary angiography, revealing 55% coronary stenosis. His ECG and single troponin are normal. What is an appropriate option for diagnostics?
        """,
            options: [
                "A second troponin rules out ACS. No consideration to further work-up is necessary.",
                "No more testing is needed given the recency of coronary angiography without intervention.",
                "No more testing is needed given the single negative troponin.",
                "A second troponin is important because this patient is an early presenter (<2 hours). Even if negative, consider admission for continued evaluation."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of troponin testing or cardiac evaluation
            explanation: """
        A second troponin is important in this case because the patient is an early presenter (symptom onset <2 hours). Among patients presenting later (symptom onset >2 hours), single high-sensitivity troponin (hs-cTn) measurements are supported by extensive data for identifying low-risk acute MI. However, for early presenters, a second troponin is essential to more accurately assess risk.

        Additionally, a negative second troponin does not rule out all acute coronary syndromes (ACS), including unstable angina, even with high-sensitivity troponin testing.

        According to the SAEM GRACE-1 guidelines, low-risk chest pain with <50% stenosis on prior angiography within the last 5 years may be managed with expedited outpatient testing, rather than inpatient admission. However, this patient’s 55% stenosis and early presentation suggest a more thorough evaluation.
        """,
            citation: "https://www.ahajournals.org/doi/full/10.1161/CIRCULATIONAHA.122.059678",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 24-year-old man with a past medical history of nephrolithiasis presents with one day of polyuria and sudden onset of colicky, right-sided flank pain. The patient notes a “brownish color” in his urine and reports feeling nauseated during the pain, though without vomiting.

        He denies fevers, chills, edema, and any history of abdominal surgery.

        After receiving a normal saline bolus, morphine, and ketorolac, his pain is well controlled. What imaging study should be performed?
        """,
            options: [
                "Cat Scan Abdomen/Pelvis.",
                "MRI Abdomen.",
                "KUB.",
                "Ultrasound."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of stone locations in the urinary tract (UPJ, iliac crossing, UVJ)
            explanation: """
        In a 2019 systematic review of 232 articles by Moore et al., renal ultrasound was found to have up to 96% sensitivity for detecting stones in young patients with low BMIs. There is consensus that, in patients with typical symptoms of renal stones who achieve adequate pain relief, ultrasound is the imaging study of choice.

        Recall that stones commonly lodge in three narrowed anatomic locations along the urinary tract: the ureteropelvic junction (UPJ), the crossing of the iliac vessels, and the ureterovesical junction (UVJ). The farther along its course a stone has traveled, the more likely it is to pass spontaneously.

        While the majority of renal stones under 6 mm will pass without procedural intervention (>80% of cases), small lodged stones can still cause significant morbidity and mortality, particularly if a urinary tract infection is present. In the setting of an obstructing stone with infection, procedural intervention to remove the stone is indicated to achieve source control and prevent the accumulation of purulent material behind the stone.
        """,
            citation: "https://www.jacr.org/article/S1546-1440(19)30424-7/fulltext",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Nephrology"
        ),
        Question(
            imageAbove: nil, // Image suggestion: CT Angio or MRA showing engorgement of the ophthalmic vein indicative of CCF
            text: """
        A patient presents with new-onset diplopia. She has two major risk factors for carotid cavernous fistula (CCF): female gender and a history of connective tissue disease.

        Which of the following is the most likely diagnosis and the appropriate diagnostic and treatment approach?
        """,
            options: [
                "Sinusitis; treat with antibiotics and analgesics",
                "Orbital cellulitis; initiate IV antibiotics and consult ophthalmology",
                "Carotid cavernous fistula; obtain advanced imaging (CT Angio or MRA) and consider endovascular embolization",
                "Thyroid eye disease; initiate thyroid function tests and supportive treatment"
            ],
            correctOptionIndex: 2,
            imageBelow: "CCF", // Image suggestion: second axial view showing right ophthalmic vein engorgement
            explanation: """
        The most likely diagnosis for this patient with new-onset diplopia, female gender, and connective tissue disease is a carotid cavernous fistula (CCF). CCFs involve an abnormal connection between the carotid artery and the cavernous sinus, leading to symptoms such as proptosis, chemosis, orbital bruit, dilated episcleral veins, eyelid swelling, and redness.

        Advanced imaging, such as CT Angio or MRA, is warranted to confirm the diagnosis. Imaging would likely reveal an engorged ophthalmic vein on the affected side due to arterialization of the venous blood supply.

        **Treatment Options**:
        - **Endovascular Embolization**: This is the most common and preferred treatment for CCF, involving the insertion of a catheter and using embolic agents (e.g., coils, balloons) to block the abnormal connection.
        - **Open Surgical Repair**: Reserved for complex or large fistulas that cannot be treated endovascularly, this procedure involves directly ligating or occluding the fistula.
        - **Observation**: Small, asymptomatic fistulas may be observed with regular follow-up and imaging to monitor for changes.

        In cases where cranial nerve deficits (CNs 3-6) are present, this suggests involvement of the cavernous sinus and should heighten suspicion for CCF.
        """,
            citation: "https://www.cureus.com/articles/123533-a-rare-and-surprising-case-of-spontaneous-type-b-carotid-cavernous-fistula-in-an-internal-medicine-ward#!/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            imageAbove: nil,
            text: """
            A generally healthy 31-year-old male living in Maine presents to your emergency department noting he can’t close his left eyelid. His eye is starting to bother him, and he also reports some difficulty swallowing water.

            On examination, you observe weakness in the left lower quadrant of his face, with a flattened nasolabial fold on the left side compared to the right. The rest of his neurologic examination is normal.

            What treatment is indicated?
            """,
            options: [
                "Valacyclovir.",
                "Prednisone.",
                "Admit for IV antibiotics and a lumbar puncture.",
                "Prednisone, valacyclovir, and doxycycline."
            ],
            correctOptionIndex: 3,
            imageBelow: "CDCLyme",  // First image // Second image
            imageBelow2: "HBTable",
            explanation: """
            For patients with new-onset Bell's palsy, early steroid treatment (preferably within three days) is indicated, as it improves the likelihood of recovery, shortens the recovery time, and reduces synkinesis (involuntary movement). The recommended dose is prednisone 60 to 80 mg daily for one week.

            In regions with high Lyme disease incidence (such as the Northeast and mid-Atlantic regions from northeastern Virginia to Maine), empiric doxycycline should be added while awaiting Lyme serology results.

            For patients presenting with severe facial palsy (House-Brackmann grade IV or higher), oral antiviral therapy (valacyclovir 1000 mg three times daily for one week) is also recommended.

            All patients with Bell's palsy should be assessed for eye closure completeness. If there is incomplete closure, eye care measures, including artificial tears, eye protection, and ointment or careful taping of the eye during sleep, are essential to prevent corneal injury.
            """,
            citation: """
            de Almeida JR, Guyatt GH, Sud S, et al. Management of Bell palsy: clinical practice guideline. CMAJ 2014; 186:917.

            Gronseth GS, Paduga R, American Academy of Neurology. Evidence-based guideline update: steroids and antivirals for Bell palsy: report of the Guideline Development Subcommittee of the American Academy of Neurology. Neurology 2012; 79:2209.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 49-year-old male with a history of epilepsy on Keppra presents with 15 minutes of generalized seizure activity. You administer several appropriately dosed benzodiazepines without cessation of the seizure. What is your next choice of medication?
        """,
            options: [
                "Keppra",
                "Depakote",
                "Valproic Acid",
                "Fosphenytoin"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of fosphenytoin administration or anticonvulsant therapy
            explanation: """
        Benzodiazepines are the first-line treatment for seizures, but up to 33% of patients may not respond to them. Fosphenytoin is the only medication labeled by the FDA specifically for refractory seizures in adults. The recommended adult dose is 20 mg/kg, administered at a rate of 100 mg/minute.

        Other options, such as Keppra, Depakote, and Valproic Acid, are not FDA-approved for this indication, and none of these options are approved for pediatric patients with refractory seizures.
        """,
            citation: """
        NETT and PECARN Investigators. Randomized trial of three anticonvulsant medications for status epilepticus. N Engl J Med 2019 Nov;381(22):2103-13. PMID: 31774955 DOI: 10.1056/NEJMoa1905795.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 24-year-old female with no past medical history presents with a gradual onset of unilateral throbbing headache accompanied by one episode of non-bloody, non-bilious emesis.

        The headache was preceded by brief flashing lights. She reports no recent trauma and has a strong history of syncope with IVs. She tried naproxen 500 mg without relief.

        What medication should be trialed first-line to alleviate the headache?
        """,
            options: [
                "Aspirin 324mg",
                "Toradol IM",
                "Compazine PO",
                "Zofran 4-8mg PO once"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: diagram of migraine pathophysiology
            explanation: """
        Migraine headaches can often be treated effectively with PO Zofran 4-8 mg once, especially using a disintegrating tablet.

        While NSAIDs have traditionally been considered first-line for migraines, the serotonin-modulating effect of ondansetron (Zofran) can also be beneficial and is a suitable first choice, particularly in patients who are intolerant of IV and IM medications.

        For ongoing management, a short prescription for Zofran PRN and recommendations to keep a headache diary and seek neurologic evaluation are important additions to the treatment plan.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 37-year-old female with no stroke risk factors and a history of epilepsy has a witnessed seizure and presents 30 minutes later with right-sided hemiplegia.

        The patient has known intellectual delay and cannot provide much information about her current weakness. What is the most likely diagnosis?
        """,
            options: [
                "Left MCA stroke",
                "Right thalamic stroke",
                "Circle of Willis aneurysmal bleed",
                "Todd’s Paralysis"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: brain illustration showing seizure activity or weakness following a seizure
            explanation: """
        Todd’s paralysis is a temporary period of paralysis following a seizure. In a young patient with no stroke risk factors, the likelihood of an ischemic thromboembolic event is low. While stroke should always be considered, the clinical presentation here is more consistent with Todd’s paralysis. There is no specific treatment, and the paralysis typically resolves on its own over time.
        """,
            citation: """
        https://www.ninds.nih.gov/health-information/disorders/todds-paralysis#:~:text=Publications-,Definition,one%20side%20of%20the%20body.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),

        Question(
            imageAbove: nil,
            text: """
        A 52-year-old man with a history of home instability, anxiety, and depression presents after the public health department contacted him, advising him to go to the nearest ER for syphilis treatment due to a positive VDRL screening test.

        He recalls a remote history of a genital rash but is uncertain how long ago it occurred. What is the correct treatment?
        """,
            options: [
                "Penicillin G 2.4M Units IV x 1",
                "Penicillin G 2.4M Units IM x 1",
                "Doxycycline 100mg PO BID x 1 week",
                "Penicillin G 2.4M Units IM x 3"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of Treponema pallidum spirochete
            explanation: """
        In cases of late latent syphilis, treatment consists of three weekly doses of penicillin G 2.4M Units IM.

        A presumptive diagnosis of syphilis requires two serologic tests: a nontreponemal test (e.g., VDRL or RPR) and a treponemal test (e.g., TP-PA, EIA, CIA, or rapid treponemal assay). False-positive nontreponemal test results can occur due to other infections, autoimmune conditions, vaccinations, drug use, pregnancy, and age, so a confirmatory treponemal test is recommended.

        If a patient is asymptomatic and the duration of infection is uncertain, late latent syphilis should be presumed and treated with three weekly IM doses of penicillin G. Early latent syphilis (<1 year) is treated with a single dose.

        Primary (painless chancre) and secondary (fever, rash, headache) syphilis are also treated with a single dose of penicillin. Tertiary syphilis, which can affect the cardiovascular, neurologic, and ocular systems, is managed similarly to late latent syphilis.

        Doxycycline is an effective alternative for penicillin-allergic patients, but the duration of treatment is two weeks.
        """,
            citation: """
        https://www.cdc.gov/std/treatment-guidelines/syphilis.htm#:~:text=A%20presumptive%20diagnosis%20of%20syphilis,test%20(i.e.%2C%20the%20T.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 76-year-old male with a past medical history of untreated atrial fibrillation, hypertension, hyperlipidemia, and pre-diabetes presents with a brief episode of right-sided weakness after dropping his coffee cup.

        His wife reports unintelligible speech during the episode, which lasted approximately 30 minutes and resolved just before his arrival at the emergency department.

        You decide to admit this patient for secondary stroke prevention, given the potential to reduce the likelihood of a future stroke by as much as __%.
        """,
            options: [
                "25%",
                "50%",
                "200%",
                "80%"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of brain or stroke prevention visual
            explanation: """
        Accumulating evidence indicates that secondary stroke prevention—through the rapid implementation of multiple interventions—can reduce the risk of stroke by as much as 80%.

        This approach emphasizes prompt medical intervention, including anticoagulation for atrial fibrillation, blood pressure management, lipid control, and lifestyle modifications, to significantly lower stroke risk.
        """,
            citation: """
        Edlow JA. Managing patients with transient ischemic attack. Ann Emerg Med 2018 Mar;71(3):409-15.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A healthy 19-year-old female presents to your emergency department with syncope. What tests are required as part of the syncope work-up?
        """,
            options: [
                "CBC and BMP",
                "CBC, CMP, and pregnancy test (hCG)",
                "CBC and CXR",
                "A pregnancy test and 12-lead ECG"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: visual of an ECG and pregnancy test to illustrate syncope work-up
            explanation: """
        The American Heart Association recommends a pregnancy test and a 12-lead ECG as the only required tests for the syncope work-up in an otherwise healthy young female.

        Additional tests can be considered based on the patient’s history and physical exam findings. For example, if the patient has been experiencing heavy menstrual bleeding or appears anemic (e.g., conjunctival pallor), a CBC to check for anemia may be warranted.

        For elderly patients, a more extensive work-up is generally indicated.

        Risk assessment tools such as the Canadian Syncope Risk Score (CSRS) can help determine the need for admission, providing a 30-day risk evaluation for death, arrhythmia, and myocardial infarction. The CSRS includes factors like a history of vasovagal predisposition, known heart disease, systolic blood pressure <90 or >180, elevated troponin, abnormal QRS axis or duration >130 ms, and QTc >480 ms. The San Francisco Syncope Rule is another useful decision tool.
        """,
            citation: """
        https://www.jwatch.org/na54885/2022/05/10/canadian-syncope-risk-score-now-validated-internationally
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 26-year-old male who is moderately obese presents after a syncope episode at a concert. You decide to apply the Canadian Syncope Risk Score (CSRS) to help guide disposition.

        What is an important exclusion criterion for applying the CSRS?
        """,
            options: [
                ">8 years old",
                "Syncope >2 minutes",
                "Taking an anticoagulant",
                "Altered mental status from baseline"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: checklist with "Canadian Syncope Score" at the top
            explanation: """
        The Canadian Syncope Risk Score (CSRS) is applicable for patients aged 16 and older who present within 24 hours of a syncope episode. Important exclusion criteria include prolonged loss of consciousness (>5 minutes), altered mental status from baseline, major trauma, head trauma, intoxication, language barrier, and witnessed seizure.

        It's also worth noting that myoclonus immediately following syncope (often termed convulsive syncope) can resemble seizure activity. Care should be taken when diagnosing myoclonus unless observed by an experienced provider, as it may lead to missing a true seizure diagnosis.
        """,
            citation: """
        https://www.jwatch.org/na54885/2022/05/10/canadian-syncope-risk-score-now-validated-internationally

        https://www.medlink.com/articles/convulsive-syncope
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A security guard standing near the entrance to your emergency department collapses to the ground.

        Within moments, he begins to exhibit short bursts of jerking movements. Nearby staff members react, and one of your colleagues comments, “He probably just had a syncope spell, don’t worry—it’s not a seizure.”

        You check a pulse and note a “thready” radial pulse. What is your next course of action?
        """,
            options: [
                "Reassure the team and give the patient space for air.",
                "Obtain IV access and perform a 12-lead ECG.",
                "Splash water in his face.",
                "Place defibrillator pads and perform a point of care glucose check."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: defibrillator pads and glucose monitor setup
            explanation: """
        While your colleague may be correct that convulsive syncope can mimic seizure activity, another possible cause of brief jerking movements is cardiac arrest.

        The presence of a “thready” pulse should immediately raise concern for a cardiac dysrhythmia that may require cardioversion. In parallel with attaching defibrillator pads, it’s prudent to check a point-of-care glucose level, as hypoglycemia is a common contributor to fainting and can also lead to cardiac arrest.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Procedures"
        ),
        Question(
            imageAbove: nil,
            text: """
        A patient presents with witnessed syncope. Which of the following features is considered high risk for cardiogenic syncope?
        """,
            options: [
                "Headache.",
                "Mood change.",
                "Prodromal amnesia.",
                "Cyanosis witnessed during the episode."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration showing cyanosis as a high-risk feature for cardiac syncope
            explanation: """
        Cyanosis observed during a syncope episode is associated with an increased likelihood of cardiac syncope.

        Symptoms prior to syncope that are associated with a lower likelihood of cardiac origin include mood changes or preoccupation with details (sensitivity, 2%; specificity, 76%; LR, 0.09), feeling cold (sensitivity, 2%; specificity, 89%; LR, 0.16), and headache (sensitivity, 3%; specificity, 80%; LR, 0.17).

        Additionally, post-syncope mood changes (sensitivity, 3%; specificity, 83%; LR, 0.21) and inability to recall behavior prior to syncope (sensitivity, 5%; specificity, 82%; LR, 0.25) are associated with a non-cardiac etiology.
        """,
            citation: """
        Albassam OT, Redelmeier RJ, Shadowitz S, Husain AM, Simel D, Etchells EE. Did this patient have cardiac syncope?: the rational clinical examination systematic review. JAMA 2019 Jun;321(24):2448-57. PMID: 31237649 DOI: 10.1001/jama.2019.8001.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        Above what age of onset of syncope is associated with the greatest likelihood of cardiac syncope?
        """,
            options: [
                "20",
                "45",
                "55",
                "35"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // No image available for this question
            explanation: """
        An age of first onset of syncope at or above 35 years is associated with a higher likelihood of cardiac syncope (LR, 3.3 [95% CI, 2.6-4.1]). Conversely, an onset age below 35 years has a low likelihood ratio for cardiac syncope (LR, 0.13 [95% CI, 0.06-0.25]).
        """,
            citation: """
        Albassam OT, Redelmeier RJ, Shadowitz S, Husain AM, Simel D, Etchells EE. Did this patient have cardiac syncope?: the rational clinical examination systematic review. JAMA 2019 Jun;321(24):2448-57. PMID: 31237649 DOI: 10.1001/jama.2019.8001.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 24-year-old woman with no medical history presents to your urgent care with syncope. What are the only two tests recommended by the American Heart Association for syncope evaluation in a young, healthy woman?
        """,
            options: [
                "CBC and CMP",
                "CMP and pregnancy test",
                "ECG and Chest X-Ray",
                "Pregnancy test and ECG"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: artwork inspired by "Normal Rockwell’s Iskra’s Expecting" on a monitor
            explanation: """
        The American Heart Association recommends only an ECG and a pregnancy test for syncope evaluation in a young, healthy woman.

        Additional tests are generally unnecessary unless the history or physical examination indicates specific concerns that warrant further investigation.
        """,
            citation: """
        Albassam OT, Redelmeier RJ, Shadowitz S, Husain AM, Simel D, Etchells EE. Did this patient have cardiac syncope?: the rational clinical examination systematic review. JAMA 2019 Jun;321(24):2448-57. PMID: 31237649 DOI: 10.1001/jama.2019.8001.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 90-year-old female is eating steak when she suddenly develops mid-anterior chest discomfort. She attempts to relieve the pain by taking large gulps of water, which only worsens the pain.

        She presents to the ER 8 hours after symptom onset because her discomfort has not improved. What is the best next step?
        """,
            options: [
                "Call GI for upper endoscope",
                "Administer insulin SQ",
                "Try a GI cocktail such as Maalox or Magic Mouthwash",
                "Trial IV or IM glucagon"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: pictorial or X-ray of esophagus with food stuck
            explanation: """
        For esophageal food impaction, an initial trial of glucagon 1-2 mg IV/IM is generally attempted to relax the esophagus before considering upper endoscopy for removal. Note that glucagon has modest success rates for esophageal food bolus (~30%) and may induce vomiting.

        The duration of the impaction is crucial; as the 24-hour mark approaches, the risk of esophageal perforation increases significantly. It’s advisable to alert GI consultants early for patients potentially nearing this 24-hour threshold.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2661297/
        https://errxpodcast.com/glucagon-esophageal-impaction/
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            imageAbove: nil,
            text: """
        In a patient presenting with vomiting and diarrhea, what feature, or lack thereof, is highly consistent with viral gastroenteritis rather than a more serious cause?
        """,
            options: [
                "Low grade fever.",
                "High grade fever.",
                "Chest pain.",
                "Lack of significant abdominal pain."
            ],
            correctOptionIndex: 3,
            imageBelow: "", // Image suggestion: artistic rendering inspired by Salvador Dali showing a calm child with medical context
            explanation: """
        A patient with vomiting and diarrhea who experiences minimal abdominal pain is highly likely to have viral gastroenteritis rather than a more serious abdominal process.

        There are exceptions to this guideline, especially in patients who are elderly, altered, or undergoing chemotherapy, as these factors may limit the ability to accurately assess abdominal discomfort. Mild fever is also common with gastroenteritis, and most patients improve quickly with fluids and antiemetics.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/books/NBK518995/
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            imageAbove: nil,
            text: """
        What electrolyte disturbance contributes to constipation?
        """,
            options: [
                "Na",
                "Cl",
                "P",
                "K"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Hypokalemia is a common contributor to constipation and can progress to ileus.

        Other notable risk factors for constipation include a sedentary lifestyle, low water intake, and opioid use.

        For patients with fecal impaction, disimpaction is essential to prevent serious complications such as stercoral perforation, which carries a high mortality rate (33%). Treatment options include suppositories and enemas, but manual digital disimpaction may be required for obstructing rectal fecalomas. Exercise caution during manual disimpaction to avoid iatrogenic perforation.

        In some cases, IV narcotic pain medication may be necessary to facilitate disimpaction, and a nurse chaperone is advised.
        """,
            citation: """
        https://bmcgeriatr.biomedcentral.com/articles/10.1186/s12877-015-0162-5
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            imageAbove: nil,
            text: """
        What is one complication of chronic constipation?
        """,
            options: [
                "Gastritis",
                "Duodenal ulceration",
                "Inflammatory bowel disease",
                "Stercoral colitis"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Chronic stagnation of fecal matter, including fecaloma, can lead to stercoral colitis, which results from compression of the colonic wall and surrounding vasculature. When blood supply cannot meet cellular and metabolic demands, ulceration and pressure necrosis of the bowel wall may develop.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/books/NBK560608/#:~:text=Stercoral%20colitis%20occurs%20when%20a,lodged%20in%20certain%20colonic%20areas.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            imageAbove: nil,
            text: """
        What are the priorities for successful resuscitation with optimal neurologic outcome during cardiac arrest?
        """,
            options: [
                "Early epinephrine and excellent bag valve mask ventilation.",
                "Effective chest compression and fluid boluses.",
                "Shocking early and frequently.",
                "Effective chest compressions and early defibrillation."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Uninterrupted chest compressions are critical for optimizing neurologic recovery after return of spontaneous circulation (ROSC). As a code leader, you can ensure minimal pauses in compressions by reminding the compressor, monitoring for fatigue, and assigning a new compressor when needed.

        Additionally, inform the team that the defibrillator will be pre-charged during chest compressions, and keep pulse checks under 10 seconds. Coordinate pulse checks with other actions, such as placing an IO for medication delivery.

        Ensure that defibrillator pads are applied quickly and properly. If shocks appear ineffective, recheck pad placement and contact.

        Although bag valve mask ventilation can be continued during a code, consider intubation only if primary respiratory failure or hypoxia is suspected as the cause of arrest. In cases of hypoxia from foreign body obstruction, perform upper airway maneuvers like a finger sweep or use of Magill forceps. If necessary, intubation can be performed, even if it pushes the foreign body further down, as bronchoscopy can later be used to retrieve it in the OR.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5553505/
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 45-year-old male with a recent upper respiratory infection (URI) and forceful nose blowing over the past five days now has intermittent anterior epistaxis. He takes only aspirin for “cardioprotection.” What is your next step?
        """,
            options: [
                "Afrin nasal spray in both nostrils.",
                "Transfuse 1 pack of platelets.",
                "Saline nasal irrigation.",
                "Soak cotton with TXA and pack the culprit nare with bayonet forceps."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Topical tranexamic acid (TXA) is particularly effective for mild to moderate anterior epistaxis in patients on antiplatelet therapy and may prevent the need for more aggressive packing methods like a Rhino Rocket.

        In a 2016 randomized controlled trial, TXA-soaked packing achieved bleeding cessation within 10 minutes in 73% of cases among patients on antiplatelet agents, compared to 29% in the standard anterior nasal packing (ANP) group. Rebleeding within 24 hours was also lower in the TXA group.

        A 2022 systematic review in the American Journal of Emergency Medicine reported a 3.5-fold higher likelihood of achieving hemostasis with TXA compared to vasoconstrictors with or without local anesthetics.

        For patients with severe bleeding, manual compression and IV access should be prioritized, with consideration for IV TXA administration if necessary.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6517002/#:~:text=Tranexamic%20acid%20to%20stop%20or,as%20cautery%20and%20nasal%20packing.
        https://www.bumc.bu.edu/emergencymedicine/files/2018/03/Zahed-Topical-TXA-vs-Packing-for-Epistaxis-2017.pdf
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Head, Ear, Eye, Nose & Throat"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 39-year-old male daily fentanyl user (intranasal route) presents to your emergency department requesting buprenorphine to support “going cold turkey.”

        Which of the following presentations suggests he is an ideal buprenorphine candidate?
        """,
            options: [
                "Last use of intravenous fentanyl in the last 2 hours with no symptoms.",
                "Last use of intravenous fentanyl 16 hours ago with severe vomiting and anxiety.",
                "Last use of intranasal fentanyl in the last 4 hours with very mild headache.",
                "Last use of intranasal fentanyl approximately 24 hours ago with moderate anxiety and stomach discomfort."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        In the United States, buprenorphine can be dispensed by an opioid treatment program and prescribed by any provider licensed under state law with a valid DEA registration. The 2023 Consolidated Appropriations Act removed the requirement for the federally mandated DATA waiver (X-Waiver).

        Buprenorphine acts as a partial agonist at the mu-opioid receptor with high receptor affinity, producing a "ceiling effect" at high doses that reduces overdose risks, such as respiratory depression. Initiating buprenorphine too soon after opioid use can precipitate withdrawal; thus, it should be started when objective signs of moderate withdrawal are observed, usually six or more hours after a short-acting opioid and potentially 24-48 hours after a long-acting opioid.

        The mode of opioid use (IV, IN, etc.) is less important than the time elapsed since last use and the type of opioid. Mild withdrawal symptoms during this period can be managed with acetaminophen for aches, antacids, loperamide for diarrhea, and hydroxyzine or clonidine for anxiety.

        Buprenorphine provides relief from withdrawal symptoms for 24-48 hours, with peak plasma levels approximately 90 minutes post-administration.
        """,
            citation: """
        Substance Abuse and Mental Health Services Administration. Removal of DATA Waiver (X-Waiver) Requirement. https://www.samhsa.gov/medications-substance-use-disorders/removal-data-waiver-requirement (Accessed on February 07, 2023).

        Walsh SL, Preston KL, Stitzer ML, et al. Clinical pharmacology of buprenorphine: ceiling effects at high doses. Clin Pharmacol Ther 1994; 55:569.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            imageAbove: nil,
            text: """
        A 41-year-old male with alcohol use disorder on naltrexone presents after a relapse in his drinking. He asks you about the mechanism of how his naltrexone suppresses alcohol consumption. Your response should be:
        """,
            options: [
                "Competitive mu receptor agonism.",
                "By inhibiting GABA.",
                "As an alpha-2 agonist.",
                "By modifying the hypothalamic-pituitary-adrenal axis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Naltrexone is a pure opioid antagonist structurally similar to morphine derivatives, functioning as a competitive antagonist with the highest affinity for mu-opioid receptors. It also modifies the hypothalamic-pituitary-adrenal (HPA) axis, which plays a role in suppressing alcohol consumption.

        Treatment initiation of naltrexone for moderate to severe alcohol use disorder should be medically supervised due to the risk of precipitated withdrawal. Naltrexone is contraindicated in patients currently taking opioids, those with acute hepatitis, elevated liver enzymes (transaminitis 3-5 times normal), or liver failure.

        For opioid use disorder, naltrexone is generally reserved for patients who cannot tolerate or prefer not to use buprenorphine or methadone or who have completed a medically supervised withdrawal.
        """,
            citation: """
        American Society of Addiction Medicine (ASAM). The ASAM National Practice Guideline for the Treatment of Opioid Use Disorder: 2020 Focused Update. J Addict Med. 2020;14(2S)(suppl 1):1-91. doi:10.1097/ADM.0000000000000633 [PubMed 32511106]
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            imageAbove: nil,
            text: """
        Inhalant abuse can lead to severe cardiovascular complications.

        Which of the following medications is considered a potential treatment option for managing the cardiovascular effects of inhalant use, specifically addressing tachycardia and hypertension?
        """,
            options: [
                "Naloxone.",
                "Flumazenil.",
                "Naltrexone.",
                "Esmolol."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        One potential treatment option for managing the cardiovascular effects of inhalant use is the administration of esmolol, a short-acting beta-blocker selective at the beta-1 adrenergic receptor.
        
        Inhalant abuse can have profound effects on the cardiovascular system, leading to increased heart rate (tachycardia) and elevated blood pressure (hypertension). These cardiovascular complications can be life-threatening and require prompt intervention.

        Esmolol selectively blocks beta-adrenergic receptors, reducing the heart rate and blood pressure. By antagonizing the effects of catecholamines on the heart, esmolol helps stabilize the cardiovascular system and manage tachycardia and hypertension associated with inhalant use.
        """,
            citation: "https://www.aliem.com/beta-blockers-inhalant-induced-ventricular-dysrhythmias/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            imageAbove: nil,
            text: """
        EMS receive a call for an unresponsive person found with needles next to him. EMS delivers intranasal Narcan with a brief improvement in mental status and respiratory rate.

        The patient is transferred to the ER gurney and you check a pulse, finding the patient pulseless.

        In addition to beginning ACLS, what Narcan dose should be given?
        """,
            options: [
                "0.02mg IV",
                "0.2mg IV",
                "20mg IV",
                "2mg IV"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Naloxone 2mg IV is an appropriate dose in cardiac arrest due to opioid overdose. Note that around 1% of patients can develop noncardiogenic pulmonary edema as a side effect of naloxone administration. The mechanism is thought to be laryngospasm and negative pressure or sudden sympathetic surge.

        2mg is also generally the dose given by lay persons via intranasal (IN) route. Note that in 2021, the FDA also approved higher IN doses, at 8mg.

        The 0.02-0.04mg dose can be used to improve RR and mental status while limiting precipitated withdrawal.

        0.2-0.4mg IV should be given to the obtunded opioid overdose with pulses.

        20mg is generally too high; however, “higher dose” naloxone products exist, including prefilled syringes of 4-5mg for IM/SC/IV delivery.
        """,
            citation: """
        https://www.ahajournals.org/doi/full/10.1161/CIR.0000000000000958

        https://www.fda.gov/news-events/press-announcements/fda-approves-higher-dosage-naloxone-nasal-spray-treat-opioid-overdose
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            imageAbove: nil,
            text: """
        A patient presents with concern of arsenic poisoning due to a diet high in shellfish.
        You reassure the patient that fish arsenic is excreted within 48 hours of ingestion, but they insist on a test. Which of the following is the best biomarker of acute exposure?
        """,
            options: [
                "Stool As level",
                "Hair As level",
                "Blood As level",
                "Urine As level"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Arsenic is rapidly cleared from the blood, so measurement of urinary arsenic, either on a 24-hour urine collection or in a spot urine, is generally preferable.

        Arsenic is a naturally occurring element found in the earth's crust and within numerous ores. Human exposures can occur from natural sources, such as volcanic eruptions, or arsenic leaching from soil and rocks into drinking water. Other sources include inhalation of arsenic dust in industries like smelting and refining, certain pesticides, fossil fuel combustion, some moonshine, and specific treatments for syphilis and certain cancers (arsenic trioxide).

        The primary routes of arsenic entry are ingestion and inhalation, with dermal absorption occurring to a lesser extent. After absorption, arsenic distributes widely in the body, with most tissues clearing it quickly except for skin, hair, and nails. Arsenic undergoes biomethylation in the liver, which was long considered the main detoxification route. New studies also highlight mechanisms like antioxidant defenses, resistance to apoptosis, and transport mechanisms.

        Approximately 70% of arsenic is excreted, mainly in urine. Acute toxicity typically presents with nausea, vomiting, abdominal pain, and diarrhea, followed by dehydration, hypotension, QTc prolongation, and potentially fatal complications like arrhythmias, ARDS, and shock. Chronic exposure, on the other hand, is associated with neurologic symptoms, skin changes, malignancies, respiratory disease, cardiovascular disease, and increased all-cause mortality.

        Concentrations of urinary arsenic greater than or equal to 50 mcg/L, in the absence of recent seafood intake, suggest arsenic poisoning. Treatment is with chelation, using oral DMSA (succimer) for milder cases, or dimercaprol or DMPS (sodium 2,3-dimercapto-1-propane sulfonate) for severe cases.

        Historical note: Rasputin is rumored to have ingested low doses of arsenic to develop tolerance and avoid lethal poisoning.
        """,
            citation: """
        https://www.atsdr.cdc.gov/csem/arsenic/biologic_fate.html#:~:text=Arsenic%20is%20excreted%20in%20the%20urine%20primarily%20through%20the%20kidneys,or%20arsenate%20%5BMarafante%20et%20al.

        https://www.uptodate.com/contents/arsenic-exposure-and-poisoning?search=arsenic&sectionRank=3&usage_type=default&anchor=H30&source=machineLearning&selectedTitle=1~127&display_rank=1#H1229512021
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
                    imageAbove: nil,
                    text: """
        A 19F with mood instability presents with vomiting 2 hours after taking 3000 mg total worth of lithium immediate-release tablets. She is vomiting and appears unwell. You send a lithium level and call the lab to kindly request expediting results.

        Your threshold for hemodialysis should be:
        """,
                    imageMiddle: nil,
                    options: [
                        "Lithium level of 1 mEq/L with a Cr of 2.",
                        "Lithium level of 2 mEq/L with a Cr of 1.",
                        "Lithium level of 4 mEq/L with a Cr of 1.",
                        "Lithium level of 5 mEq/L with a Cr of 1."
                    ],
                    correctOptionIndex: 3,
                    imageBelow: nil,
                    imageBelow2: nil,
                    explanation: """
        Any adult who ingests more than 2400 mg of lithium, or any child who ingests more than 30 mg/kg, requires clinical and laboratory evaluation to assess for toxicity.

        Hemodialysis is the treatment of choice for severe lithium toxicity because lithium is readily dialyzable due to its low molecular weight, negligible protein binding, and small volume of distribution.

        Hemodialysis is indicated if there are severe symptoms or serum lithium concentrations are greater than 5 mEq/L, or if greater than 4 mEq/L with creatinine greater than 2 mg/dL.

        In an awake, asymptomatic patient who presents within four hours after a presumed significant ingestion of sustained-release lithium (greater than 10 to 15 tablets) or within one hour of a large ingestion of immediate-release lithium, there is Grade 2C evidence to perform whole-bowel irrigation with polyethylene glycol (PEG) solution.

        Restoration of sodium and water balance in hypovolemic patients with isotonic (0.9%) saline is also required to maximize lithium clearance. Continuing isotonic saline even once euvolemic will increase kidney lithium excretion since lithium and sodium are both reabsorbed by the proximal tubules. A reasonable rate is twice maintenance but should be sufficient to maintain adequate urine output.
        """,
                    citation: """
        https://www.uptodate.com/contents/lithium-poisoning?search=lithium%20toxicity&sectionRank=3&usage_type=default&anchor=H32&source=machineLearning&selectedTitle=1~55&display_rank=1#H1479347063
        """,
                    isSample: true,
                    videoExplain: nil,
                    video: nil,
                    subject: "Toxicology"
                ),


*/



    ]
}

