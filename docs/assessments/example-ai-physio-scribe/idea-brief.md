# Idea Brief - AI Scribe For Physical Therapy Clinics (FICTIONAL EXAMPLE)

> Illustrative only. All facts, numbers, and competitor references are
> invented to demonstrate the workflow output.

## Source

Public fictional worked example for Worth Building.

## Idea Name

AI Scribe For Physical Therapy Clinics

## Problem

Physical therapists spend 30-60 minutes of every working day on session
documentation. The notes are legally required, are read rarely after
writing, and are a common cause of staying late. Existing EHR-native
dictation tools and horizontal AI scribes are built for physicians and
do not understand PT-specific terminology, exercise libraries, or CPT
codes for therapy services.

## Target Customer

Independent outpatient physical therapy clinics in the US with 2-5
therapists. The initial user is a staff PT or owner-clinician. The best
early adopter is an owner who still treats patients and directly feels
documentation drag.

## Current Alternatives

1. **Typing after hours.** The default. Therapists stay 30-45 minutes
   past close to finish documentation.
2. **EHR voice dictation.** Requires explicit dictation and does not
   transcribe natural conversation.
3. **Horizontal AI scribes.** Built for physicians, not PT. They miss
   exercise terminology and therapy-specific coding.
4. **Offshore human scribes.** Too expensive for most small clinics and
   raise HIPAA concerns.

## Proposed Solution

An ambient AI scribe that listens to a physical therapy session and
produces a compliant SOAP note, suggested billing codes, and a draft home
exercise prescription ready for the clinic's EHR. The clinician reviews
and approves every note before use.

## Buyer

The economic buyer is the clinic owner for independent clinics, often the
same person as the practicing owner-clinician. In larger clinics the
buyer becomes a clinical director or VP of operations, but those accounts
are not the beachhead.

## Why Now

- Ambient AI scribing proved the technology pattern in physician markets
  during 2024-2025.
- Staffing pressure makes administrative time visible to clinic owners.
- Therapy coding changes created a retraining window where clinics are
  already reconsidering documentation workflows.
- Horizontal incumbents are focused on larger physician markets, leaving
  a window for PT-specific vertical depth.

## Distribution Hypothesis

Direct founder-led outreach to clinic owners through LinkedIn, state PT
association directories, and narrow educational content. The first
quarter target is 50 discovery conversations and 2-3 design partners.
This is realistic for a small technical team because the beachhead has a
single owner-buyer and avoids enterprise procurement.

## Willingness To Pay Hypothesis

Clinics will pay $150-300 per therapist per month if the product saves at
least 30 minutes per therapist per day and reduces documentation-related
claim risk. The budget comes from administrative software spend, adjacent
to EHR and scheduling tools.

## Switching Hypothesis

Switching friction is low at first because the scribe does not replace
the EHR; it drafts content that a therapist can paste or sync. The real
switching barrier is trust: therapists must believe the AI captures
billable detail accurately enough that it does not create denied claims
or extra review work.

## Founder / Team Right To Win

The assumed 2-person team has one HCI/frontend builder and one AI/ML
backend builder. Strengths: shipping AI-native SaaS, product-led
distribution, and technical content. Weakness: no direct PT clinical
network. The right-to-win depends on recruiting 2-3 clinic owners as
design partners before building the full product.

## Capital And Validation Constraints

Bootstrap-only. No external funding assumed. The validation budget is
under $1,000 for the landing-page RAT plus early infrastructure work for
concierge pilots. The idea must produce a meaningful signal within 90
days.

## Dependency And Regulatory Constraints

HIPAA applies fully. Any pilot touching PHI needs BAA-compliant
infrastructure and a clinician approval step before notes enter the
record. Foundation model dependency is manageable if the product keeps
model-swapping possible and stores PT-specific correction data
separately.

## Defensibility Hypothesis

- PT-specific session transcripts plus therapist corrections can become a
  proprietary data moat.
- Vertical workflow depth, including CPT coding and exercise
  prescription, creates switching costs beyond generic transcription.
- Trust and HIPAA operating discipline create a barrier for casual
  entrants.
- The product can become an agent that completes documentation, coding,
  and exercise-plan drafting, rather than a thin dictation tool.

## Open Questions

- Is documentation pain in PT urgent enough to justify a separate paid
  tool?
- Will owners pay the hypothesized price range without committee
  approval?
- Can the team recruit credible PT design partners quickly enough to
  close the founder-market-fit gap?
