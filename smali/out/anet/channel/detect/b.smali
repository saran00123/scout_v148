.class Lanet/channel/detect/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/detect/a;


# direct methods
.method constructor <init>(Lanet/channel/detect/a;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lanet/channel/detect/b;->a:Lanet/channel/detect/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 64
    iget-object v0, p0, Lanet/channel/detect/b;->a:Lanet/channel/detect/a;

    iget-object v0, v0, Lanet/channel/detect/a;->a:Lanet/channel/detect/ExceptionDetector;

    .line 1038
    iget-object v0, v0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    .line 64
    invoke-virtual {v0}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->clear()V

    .line 65
    iget-object v0, p0, Lanet/channel/detect/b;->a:Lanet/channel/detect/a;

    iget-object v0, v0, Lanet/channel/detect/a;->a:Lanet/channel/detect/ExceptionDetector;

    const-wide/16 v1, 0x0

    .line 2038
    iput-wide v1, v0, Lanet/channel/detect/ExceptionDetector;->a:J

    return-void
.end method
