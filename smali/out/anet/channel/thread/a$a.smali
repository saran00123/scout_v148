.class Lanet/channel/thread/a$a;
.super Ljava/util/concurrent/FutureTask;
.source "Taobao"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/thread/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lanet/channel/thread/a$a<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/thread/a;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lanet/channel/thread/a;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lanet/channel/thread/a$a;->a:Lanet/channel/thread/a;

    .line 41
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lanet/channel/thread/a;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lanet/channel/thread/a$a;->a:Lanet/channel/thread/a;

    .line 36
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 37
    iput-object p2, p0, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/thread/a$a;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/thread/a$a<",
            "TV;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_8

    const/4 p1, -0x1

    return p1

    .line 54
    :cond_8
    iget-object v1, p0, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2f

    iget-object v2, p1, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_2f

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 56
    iget-object v1, p0, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/Comparable;

    if-eqz v2, :cond_2f

    .line 57
    check-cast v1, Ljava/lang/Comparable;

    iget-object p1, p1, Lanet/channel/thread/a$a;->b:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_2f
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 31
    check-cast p1, Lanet/channel/thread/a$a;

    invoke-virtual {p0, p1}, Lanet/channel/thread/a$a;->a(Lanet/channel/thread/a$a;)I

    move-result p1

    return p1
.end method
