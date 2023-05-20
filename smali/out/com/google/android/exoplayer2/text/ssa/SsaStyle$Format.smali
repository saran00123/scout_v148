.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Format"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final fontSizeIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final primaryColorIndex:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    .line 227
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    .line 228
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    .line 229
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    .line 230
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x7

    .line 245
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

    .line 246
    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_66

    .line 247
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

    sparse-switch v8, :sswitch_data_72

    goto :goto_52

    :sswitch_2a
    const-string v8, "alignment"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    move v3, v11

    goto :goto_53

    :sswitch_34
    const-string v8, "fontsize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    move v3, v9

    goto :goto_53

    :sswitch_3e
    const-string v8, "name"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    move v3, v0

    goto :goto_53

    :sswitch_48
    const-string v8, "primarycolour"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    move v3, v10

    goto :goto_53

    :cond_52
    :goto_52
    move v3, v1

    :goto_53
    if-eqz v3, :cond_62

    if-eq v3, v11, :cond_60

    if-eq v3, v10, :cond_5e

    if-eq v3, v9, :cond_5c

    goto :goto_63

    :cond_5c
    move v7, v2

    goto :goto_63

    :cond_5e
    move v6, v2

    goto :goto_63

    :cond_60
    move v5, v2

    goto :goto_63

    :cond_62
    move v4, v2

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_66
    if-eq v4, v1, :cond_70

    .line 263
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;

    array-length v8, p0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;-><init>(IIIII)V

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    return-object v0

    :sswitch_data_72
    .sparse-switch
        -0x43a3db2 -> :sswitch_48
        0x337a8b -> :sswitch_3e
        0x15d92cd0 -> :sswitch_34
        0x695fa1e3 -> :sswitch_2a
    .end sparse-switch
.end method
