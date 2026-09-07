# Voiceover script — intro reel

102 seconds of video. About 230 words, a comfortable pace with pauses.

Structure follows the same arc Gurcan uses in his Wake Forest clip: state the
problem in plain language, describe the working method, give one concrete
clinical case, then say what the doctor gets. Same shape, your material.

Record on your phone in a small carpeted room, phone a hand's width away and
slightly off-axis so plosives do not thump. Leave the first two seconds silent.

---

**0:00–0:05 · Title** *(silent)*

**0:05–0:09 · Chapter 1**
> My field is applying machine learning to medical images.

**0:09–0:18 · The method loop**
> The approach is the same every time. First I try to understand what the medical
> problem actually is. Then what kind of data can answer it. Then we design,
> develop and validate the system, and finally deploy it to help medical
> professionals.

**0:18–0:31 · The problem**
> Here is the problem I keep coming back to. A patient finishes radiation for a
> brain tumor. Months later a scan shows something. It could be the tumor
> returning, or the tissue reacting to the radiation. On MRI they look almost the
> same. But one means more treatment and the other means none, and confirming
> which often means surgery.

**0:31–0:39 · Chapter 2 and the data**
> So, what data. Structural MRI shows where the tumor is. Functional MRI shows
> what the brain is doing. CT shows the organs around it. The cohorts are small,
> the follow-up is incomplete, and scanners differ between hospitals.

**0:39–0:47 · AMOS footage**
> This is our segmentation on held-out data from an international challenge.
> Ground truth on the left, our model on the right. We placed eighth of the
> field, scored by the organizers on scans we never saw.

**0:47–1:08 · The models**
> Three things I have built. A segmentation network using a neural differential
> equation, about thirty percent smaller, so it can run in a hospital rather than
> only on a research cluster. A radiomics and survival model that separates
> recurrence from necrosis and handles patients lost to follow-up. And an
> uncertainty framework, which is the one I care about most, because it tells you
> when the model is out of its depth.

**1:08–1:22 · How it helps**
> What I want is for a doctor to be able to say: this is my read of the scan, and
> the system supports it, and here is where it does not. Not a model that
> overrules them. A model that gives their own judgment something to lean on.

**1:22–1:33 · Reach**
> And one application matters more than the rest. In places where resources are
> limited and there is no specialist, these systems can work as a screening or
> triage tool. A hospital without a neuroradiologist still has a scanner.

**1:33–1:42 · End card**
> If a model cannot tell a doctor when to doubt it, it should not be helping make
> the decision. That is the problem I work on.

---

## Muxing your recording in

```
ffmpeg -i media/intro.mp4 -i voice.m4a -c:v copy -c:a aac -b:a 128k -shortest media/intro-vo.mp4
```

Then point the `<source>` in `index.html` at `intro-vo.mp4` and delete the
`.webm` line, since that file has no audio.

If your recording runs longer or shorter than 102 seconds, tell me the length
and I will re-time the segments rather than have you re-record.
