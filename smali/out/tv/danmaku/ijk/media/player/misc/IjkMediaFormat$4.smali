.class Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;
.super Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V
    .registers 2

    .line 125
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;->this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .registers 5

    const-string v0, "codec_profile_id"

    .line 128
    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_78

    const/4 p1, 0x0

    return-object p1

    :sswitch_b
    const-string v0, "High 4:4:4 Intra"

    goto :goto_31

    :sswitch_e
    const-string v0, "High 4:2:2 Intra"

    goto :goto_31

    :sswitch_11
    const-string v0, "High 10 Intra"

    goto :goto_31

    :sswitch_14
    const-string v0, "Constrained Baseline"

    goto :goto_31

    :sswitch_17
    const-string v0, "High 4:4:4 Predictive"

    goto :goto_31

    :sswitch_1a
    const-string v0, "High 4:4:4"

    goto :goto_31

    :sswitch_1d
    const-string v0, "High 4:2:2"

    goto :goto_31

    :sswitch_20
    const-string v0, "High 10"

    goto :goto_31

    :sswitch_23
    const-string v0, "High"

    goto :goto_31

    :sswitch_26
    const-string v0, "Extended"

    goto :goto_31

    :sswitch_29
    const-string v0, "Main"

    goto :goto_31

    :sswitch_2c
    const-string v0, "Baseline"

    goto :goto_31

    :sswitch_2f
    const-string v0, "CAVLC 4:4:4"

    .line 174
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "codec_name"

    .line 177
    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "h264"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "codec_level"

    .line 179
    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_5c

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5c
    const-string v2, " Profile Level "

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    div-int/lit8 v2, p1, 0xa

    rem-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    rem-int/2addr p1, v0

    if-eqz p1, :cond_72

    const-string v0, "."

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    :cond_72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_78
    .sparse-switch
        0x2c -> :sswitch_2f
        0x42 -> :sswitch_2c
        0x4d -> :sswitch_29
        0x58 -> :sswitch_26
        0x64 -> :sswitch_23
        0x6e -> :sswitch_20
        0x7a -> :sswitch_1d
        0x90 -> :sswitch_1a
        0xf4 -> :sswitch_17
        0x242 -> :sswitch_14
        0x86e -> :sswitch_11
        0x87a -> :sswitch_e
        0x8f4 -> :sswitch_b
    .end sparse-switch
.end method
