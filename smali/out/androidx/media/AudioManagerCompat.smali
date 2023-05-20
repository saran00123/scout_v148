.class public final Landroidx/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AudioManCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I
    .registers 4
    .param p0    # Landroid/media/AudioManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/media/AudioFocusRequestCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_24

    if-eqz p1, :cond_1c

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 120
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    .line 122
    :cond_13
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0

    .line 116
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioFocusRequestCompat must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioManager must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStreamMaxVolume(Landroid/media/AudioManager;I)I
    .registers 2
    .param p0    # Landroid/media/AudioManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public static getStreamMinVolume(Landroid/media/AudioManager;I)I
    .registers 4
    .param p0    # Landroid/media/AudioManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 148
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static requestAudioFocus(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I
    .registers 4
    .param p0    # Landroid/media/AudioManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/media/AudioFocusRequestCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_30

    if-eqz p1, :cond_28

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 91
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    .line 94
    :cond_13
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioAttributesCompat()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getFocusGain()I

    move-result p1

    .line 93
    invoke-virtual {p0, v0, v1, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0

    .line 87
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioFocusRequestCompat must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioManager must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
