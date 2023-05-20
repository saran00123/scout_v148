.class public Lanet/channel/request/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/Cancelable;


# static fields
.field public static final NULL:Lanet/channel/request/b;


# instance fields
.field private final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lanet/channel/request/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lanet/channel/request/b;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    sput-object v0, Lanet/channel/request/b;->NULL:Lanet/channel/request/b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lanet/channel/request/b;->a:Ljava/util/concurrent/Future;

    .line 19
    iput-object p2, p0, Lanet/channel/request/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 24
    iget-object v0, p0, Lanet/channel/request/b;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_16

    .line 25
    iget-object v0, p0, Lanet/channel/request/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.FutureCancelable"

    const-string v3, "cancel request"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lanet/channel/request/b;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_16
    return-void
.end method
