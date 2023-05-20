.class Lorg/android/spdy/ProtectedPointer;
.super Ljava/lang/Object;
.source "ProtectedPointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;
    }
.end annotation


# static fields
.field private static final CLOSED:J = 0x3L

.field private static final INIT:J = 0x1L

.field private static final WAIT_CLOSE:J = 0x2L


# instance fields
.field private data2protected:Ljava/lang/Object;

.field protected how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

.field private referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    iput-object p1, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method enter()Z
    .registers 6

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    .line 54
    iget-object v4, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method exit()V
    .registers 6

    .line 63
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 64
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 65
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

    if-eqz v0, :cond_1c

    .line 66
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;->close(Ljava/lang/Object;)V

    :cond_1c
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method getData()Ljava/lang/Object;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    return-object v0
.end method

.method release()V
    .registers 6

    .line 77
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 78
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 79
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

    if-eqz v0, :cond_1a

    .line 80
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;->close(Ljava/lang/Object;)V

    :cond_1a
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method setHow2close(Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lorg/android/spdy/ProtectedPointer;->how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

    return-void
.end method
