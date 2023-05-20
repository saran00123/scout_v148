.class final Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SsaDialogueFormat.java"


# instance fields
.field public final endTimeIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 44
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    .line 45
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->styleIndex:I

    .line 46
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->textIndex:I

    .line 47
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Format:"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x7

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    .line 63
    :goto_1b
    array-length v3, p0

    if-ge v2, v3, :cond_72

    .line 64
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_80

    goto :goto_5e

    :sswitch_33
    const-string/jumbo v8, "style"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    move v3, v10

    goto :goto_5f

    :sswitch_3e
    const-string/jumbo v8, "start"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    move v3, v0

    goto :goto_5f

    :sswitch_49
    const-string/jumbo v8, "text"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    move v3, v9

    goto :goto_5f

    :sswitch_54
    const-string v8, "end"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    move v3, v11

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v3, v1

    :goto_5f
    if-eqz v3, :cond_6e

    if-eq v3, v11, :cond_6c

    if-eq v3, v10, :cond_6a

    if-eq v3, v9, :cond_68

    goto :goto_6f

    :cond_68
    move v7, v2

    goto :goto_6f

    :cond_6a
    move v6, v2

    goto :goto_6f

    :cond_6c
    move v5, v2

    goto :goto_6f

    :cond_6e
    move v4, v2

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_72
    if-eq v4, v1, :cond_7e

    if-eq v5, v1, :cond_7e

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    array-length v8, p0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;-><init>(IIIII)V

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    return-object v0

    :sswitch_data_80
    .sparse-switch
        0x188db -> :sswitch_54
        0x36452d -> :sswitch_49
        0x68ac462 -> :sswitch_3e
        0x68b1db1 -> :sswitch_33
    .end sparse-switch
.end method
