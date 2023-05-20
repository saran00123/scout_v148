.class public Lcom/taobao/accs/ut/monitor/SessionMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "accs"
    monitorPoint = "session"
.end annotation


# instance fields
.field private a:J

.field public auth_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field

.field private b:J

.field public close_connection_type:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public close_reasons:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public connect_type:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public connection_stop_date:J

.field public fail_reasons:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isProxy:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public live_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 86400.0
        min = 0.0
    .end annotation
.end field

.field public ping_rec_times:I
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field

.field public ping_send_times:I
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field

.field public ret:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retry_times:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sdkv:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ssl_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field

.field public tcp_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    .line 15
    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->fail_reasons:I

    const-string v1, "none"

    .line 17
    iput-object v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    const/4 v2, 0x2

    .line 21
    iput v2, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_type:I

    .line 23
    iput-object v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connect_type:Ljava/lang/String;

    .line 25
    iput-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->isProxy:Z

    const/16 v0, 0xdd

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->sdkv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCloseReason()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    return-object v0
.end method

.method public getConCloseDate()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->b:J

    return-wide v0
.end method

.method public getConStopDate()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    return-wide v0
.end method

.method public getRet()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    return v0
.end method

.method public onCloseConnect()V
    .registers 3

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->b:J

    return-void
.end method

.method public onConnectStop()V
    .registers 3

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    return-void
.end method

.method public onPingCBReceive()V
    .registers 2

    .line 88
    iget v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    return-void
.end method

.method public onSendPing()V
    .registers 2

    .line 84
    iget v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_send_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_send_times:I

    return-void
.end method

.method public onStartConnect()V
    .registers 3

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->a:J

    return-void
.end method

.method public setCloseReason(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    return-void
.end method

.method public setCloseType(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_type:I

    return-void
.end method

.method public setConnectType(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connect_type:Ljava/lang/String;

    return-void
.end method

.method public setFailReason(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->fail_reasons:I

    return-void
.end method

.method public setRet(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    return-void
.end method

.method public setRetryTimes(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->retry_times:I

    return-void
.end method
