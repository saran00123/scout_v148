.class public Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/flowcontrol/FlowControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowControlInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f5d1a48138d31b7L


# instance fields
.field public bizId:Ljava/lang/String;

.field public delayTime:J

.field public expireTime:J

.field public serviceId:Ljava/lang/String;

.field public startTime:J

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .registers 10

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->serviceId:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->bizId:Ljava/lang/String;

    .line 207
    iput p3, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->status:I

    .line 208
    iput-wide p4, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-lez p3, :cond_12

    goto :goto_13

    :cond_12
    move-wide p6, p1

    .line 209
    :goto_13
    iput-wide p6, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    cmp-long p3, p8, p1

    if-lez p3, :cond_1a

    move-wide p1, p8

    .line 210
    :cond_1a
    iput-wide p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .registers 7

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    iget-wide v4, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "flow ctrl serviceId:"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->serviceId:Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " bizId:"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->bizId:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " status:"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->status:I

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " delayTime:"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " startTime:"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " expireTime:"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
