.class final Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;
.super Ljava/lang/Object;
.source "Tx3gSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/Cue;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_9

    .line 60
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public getEventTime(I)J
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 54
    :goto_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    return p1
.end method
