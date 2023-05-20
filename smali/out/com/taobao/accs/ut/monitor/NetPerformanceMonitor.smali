.class public Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "accs"
    monitorPoint = "netperformance"
.end annotation


# instance fields
.field public accs_sdk_version:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public accs_type:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public data_id:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field private enter_queue_date:J

.field public error_code:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public fail_reasons:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public in_queue_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public msgType:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public receive_accs_to_call_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field private receive_ack_date:J

.field public receive_agoo_to_call_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field private receive_data_time:J

.field public receive_to_call_back_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public ret:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retry_times:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public send_to_receive_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public service_id:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field private start_send_date:J

.field public start_to_enter_queue_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public take_date:J

.field public talk_to_send_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field private to_accs_time:J

.field private to_agoo_time:J

.field private to_bz_date:J

.field public to_tnet_date:J

.field public total_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    const-string v0, "none"

    .line 39
    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->service_id:Ljava/lang/String;

    return-void
.end method

.method private computeTime(JJ)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_c

    cmp-long v2, p3, v0

    if-lez v2, :cond_c

    sub-long v0, p3, p1

    :cond_c
    return-wide v0
.end method


# virtual methods
.method public beforeCommit()Z
    .registers 5

    const/16 v0, 0xdd

    .line 154
    iput v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->accs_sdk_version:I

    .line 155
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_send_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_bz_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->total_time:J

    .line 156
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_send_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->enter_queue_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_to_enter_queue_time:J

    .line 157
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->enter_queue_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->in_queue_time:J

    .line 158
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->talk_to_send_time:J

    .line 159
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_ack_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->send_to_receive_time:J

    .line 160
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_ack_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_bz_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_to_call_back_time:J

    .line 161
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_data_time:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_accs_time:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_accs_to_call_time:J

    .line 162
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_data_time:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_agoo_time:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_agoo_to_call_time:J

    .line 163
    invoke-super {p0}, Lcom/taobao/accs/utl/BaseMonitor;->beforeCommit()Z

    move-result v0

    return v0
.end method

.method public onEnterQueueData()V
    .registers 3

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->enter_queue_date:J

    return-void
.end method

.method public onRecAck()V
    .registers 3

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_ack_date:J

    return-void
.end method

.method public onReceiveData()V
    .registers 3

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_data_time:J

    return-void
.end method

.method public onSend()V
    .registers 3

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_send_date:J

    return-void
.end method

.method public onSendData()V
    .registers 3

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    return-void
.end method

.method public onTakeFromQueue()V
    .registers 3

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    return-void
.end method

.method public onToAccsTime()V
    .registers 3

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_accs_time:J

    return-void
.end method

.method public onToAgooTime()V
    .registers 3

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_agoo_time:J

    return-void
.end method

.method public onToBizDate()V
    .registers 3

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_bz_date:J

    return-void
.end method

.method public setConnType(I)V
    .registers 2

    .line 149
    iput p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->accs_type:I

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->data_id:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setFailReason(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 4

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    iput v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->error_code:I

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 132
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public setFailReason(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->fail_reasons:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->host:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .registers 2

    .line 126
    iput p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->msgType:I

    return-void
.end method

.method public setRet(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const-string p1, "y"

    goto :goto_7

    :cond_5
    const-string p1, "n"

    .line 118
    :goto_7
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->ret:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->service_id:Ljava/lang/String;

    return-void
.end method
