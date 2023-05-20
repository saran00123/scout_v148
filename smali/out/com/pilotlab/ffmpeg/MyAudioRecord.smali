.class public Lcom/pilotlab/ffmpeg/MyAudioRecord;
.super Ljava/lang/Object;
.source "MyAudioRecord.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

.field private canceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private isExit:Z

.field private isRecording:Z

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mMinBufferSize:I

.field private mSampleRate:I

.field private noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MyAudioRecord"

    .line 12
    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->TAG:Ljava/lang/String;

    .line 26
    iput p1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mSampleRate:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isRecording:Z

    .line 28
    iget p1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mSampleRate:I

    invoke-direct {p0, p1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->open(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/ffmpeg/MyAudioRecord;)I
    .registers 1

    .line 10
    iget p0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mMinBufferSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Landroid/media/AudioRecord;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isExit:Z

    return p0
.end method

.method static synthetic access$202(Lcom/pilotlab/ffmpeg/MyAudioRecord;Z)Z
    .registers 2

    .line 10
    iput-boolean p1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isExit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/pilotlab/ffmpeg/MyAudioRecord;)I
    .registers 1

    .line 10
    iget p0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mSampleRate:I

    return p0
.end method

.method static synthetic access$400(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isRecording:Z

    return p0
.end method

.method static synthetic access$500(Lcom/pilotlab/ffmpeg/MyAudioRecord;)V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->close()V

    return-void
.end method

.method private close()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_f

    .line 101
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 102
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_f
    return-void
.end method

.method private initEffect()V
    .registers 3

    .line 56
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 58
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->canceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 62
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 61
    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->canceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 63
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->canceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_21

    .line 64
    invoke-virtual {v0, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 68
    :cond_21
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 69
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_2e

    .line 70
    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 71
    :cond_2e
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 72
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 71
    invoke-static {v0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 73
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_41

    .line 74
    invoke-virtual {v0, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 77
    :cond_41
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 78
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_4e

    .line 79
    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 80
    :cond_4e
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 80
    invoke-static {v0}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    .line 82
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_61

    .line 83
    invoke-virtual {v0, v1}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    :cond_61
    return-void
.end method

.method private open(I)Z
    .registers 10

    const/16 v0, 0x10

    const/4 v1, 0x2

    .line 33
    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mMinBufferSize:I

    .line 36
    iget v6, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mMinBufferSize:I

    const/4 v0, 0x0

    if-gez v6, :cond_f

    return v0

    .line 38
    :cond_f
    new-instance v7, Landroid/media/AudioRecord;

    const/4 v2, 0x7

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 43
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez p1, :cond_21

    return v0

    .line 46
    :cond_21
    invoke-direct {p0}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->initEffect()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public destroy()Z
    .registers 2

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isExit:Z

    return v0
.end method

.method public getRecorder()Landroid/media/AudioRecord;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public pause(Z)Z
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isRecording:Z

    return p1
.end method

.method public startVoip()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isExit:Z

    .line 109
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord;->isRecording:Z

    .line 111
    new-instance v0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;-><init>(Lcom/pilotlab/ffmpeg/MyAudioRecord;)V

    .line 153
    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->start()V

    return-void
.end method
