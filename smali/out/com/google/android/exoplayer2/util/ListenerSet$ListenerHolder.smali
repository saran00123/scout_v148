.class final Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/ListenerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/android/exoplayer2/util/MutableFlags;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eventsFlags:Lcom/google/android/exoplayer2/util/MutableFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private needsIterationFinishedEvent:Z

.field private released:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/common/base/Supplier;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/common/base/Supplier<",
            "TE;>;)V"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    .line 281
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/MutableFlags;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->eventsFlags:Lcom/google/android/exoplayer2/util/MutableFlags;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 321
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 292
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->eventsFlags:Lcom/google/android/exoplayer2/util/MutableFlags;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->add(I)V

    :cond_c
    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 297
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public iterationFinished(Lcom/google/common/base/Supplier;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "TE;>;",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;TE;>;)V"
        }
    .end annotation

    .line 303
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_1a

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->eventsFlags:Lcom/google/android/exoplayer2/util/MutableFlags;

    .line 307
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/MutableFlags;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->eventsFlags:Lcom/google/android/exoplayer2/util/MutableFlags;

    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 309
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/MutableFlags;)V

    :cond_1a
    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    .line 286
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_e

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->eventsFlags:Lcom/google/android/exoplayer2/util/MutableFlags;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/MutableFlags;)V

    :cond_e
    return-void
.end method
