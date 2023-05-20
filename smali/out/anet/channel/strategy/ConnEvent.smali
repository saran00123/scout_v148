.class public Lanet/channel/strategy/ConnEvent;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public connTime:J

.field public isAccs:Z

.field public isSuccess:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    const-wide v1, 0x7fffffffffffffffL

    .line 10
    iput-wide v1, p0, Lanet/channel/strategy/ConnEvent;->connTime:J

    .line 11
    iput-boolean v0, p0, Lanet/channel/strategy/ConnEvent;->isAccs:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 15
    iget-boolean v0, p0, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-eqz v0, :cond_7

    const-string v0, "ConnEvent#Success"

    goto :goto_9

    :cond_7
    const-string v0, "ConnEvent#Fail"

    :goto_9
    return-object v0
.end method
