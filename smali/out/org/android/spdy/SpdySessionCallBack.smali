.class final Lorg/android/spdy/SpdySessionCallBack;
.super Ljava/lang/Object;
.source "SpdySessionCallBack.java"

# interfaces
.implements Lorg/android/spdy/Intenalcb;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .registers 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.bioPingRecvCallback] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_20

    .line 207
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V

    goto :goto_25

    :cond_20
    const-string p1, "[SpdySessionCallBack.bioPingRecvCallback] - no sessionCallBack."

    .line 209
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .registers 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.getSSLMeta] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_21

    .line 218
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1}, Lorg/android/spdy/SessionCb;->getSSLMeta(Lorg/android/spdy/SpdySession;)[B

    move-result-object p1

    return-object p1

    :cond_21
    const-string p1, "[SpdySessionCallBack.getSSLMeta] - no sessionCallBack."

    .line 220
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .registers 5

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.putSSLMeta] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_21

    .line 230
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->putSSLMeta(Lorg/android/spdy/SpdySession;[B)I

    move-result p1

    return p1

    :cond_21
    const-string p1, "[SpdySessionCallBack.putSSLMeta] - no sessionCallBack."

    .line 232
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .registers 7

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_20

    .line 158
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V

    goto :goto_25

    :cond_20
    const-string p1, "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - no sessionCallBack."

    .line 160
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .registers 16

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tnet-jni"

    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_27

    .line 148
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/SessionCb;->spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V

    goto :goto_2c

    :cond_27
    const-string v0, "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - no sessionCallBack."

    .line 150
    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;I)V
    .registers 16

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyDataChunkRecvCB] - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tnet-jni"

    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v7

    .line 19
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 20
    iget-object v3, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_31

    .line 21
    iget-object v2, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v6, v0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v0, v2

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V

    goto :goto_36

    :cond_31
    const-string v0, "[SpdySessionCallBack.spdyDataChunkRecvCB] - no sessionCallBack."

    .line 23
    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    const/4 v0, 0x3

    const-string v1, "spdyDataChunkRecvCB"

    .line 25
    invoke-static {v1, v0, v7, v8}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V
    .registers 16

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyDataRecvCallback] - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tnet-jni"

    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v7

    .line 35
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 36
    iget-object v3, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_31

    .line 37
    iget-object v2, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v6, v0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v0, v2

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V

    goto :goto_36

    :cond_31
    const-string v0, "[SpdySessionCallBack.spdyDataRecvCallback] - no sessionCallBack."

    .line 39
    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    const/4 v0, 0x3

    const-string v1, "spdyDataRecvCallback"

    .line 41
    invoke-static {v1, v0, v7, v8}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V
    .registers 16

    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyDataSendCallback] - "

    .line 49
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object p6

    if-eqz p6, :cond_1d

    .line 51
    iget-object v1, p6, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v1, :cond_1d

    .line 52
    iget-object v2, p6, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v8, p6, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lorg/android/spdy/Spdycb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V

    goto :goto_22

    :cond_1d
    const-string p1, "[SpdySessionCallBack.spdyDataSendCallback] - no sessionCallBack."

    .line 54
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyOnStreamResponse] - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tnet-jni"

    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 99
    invoke-static {v6}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 100
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v7

    .line 101
    invoke-virtual {p1, p5}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 102
    iget-object v3, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_34

    .line 103
    iget-object v2, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v5, v0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v0, v2

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/android/spdy/Spdycb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V

    goto :goto_39

    :cond_34
    const-string v0, "[SpdySessionCallBack.spdyOnStreamResponse] - no sessionCallBack."

    .line 105
    invoke-static {v2, v0}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    const-string v0, "spdyOnStreamResponse"

    .line 107
    invoke-static {v0, v6, v7, v8}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .registers 9

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdyPingRecvCallback] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 132
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 133
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_2d

    .line 134
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v1

    .line 135
    iget-object v3, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    const-string p1, "spdyPingRecvCallback"

    .line 136
    invoke-static {p1, v0, v1, v2}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_32

    :cond_2d
    const-string p1, "[SpdySessionCallBack.spdyPingRecvCallback] - no sessionCallBack."

    .line 138
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_32
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V
    .registers 9

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdyOnStreamResponse] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 84
    invoke-virtual {p1, p4}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object p4

    if-eqz p4, :cond_2c

    .line 85
    iget-object v0, p4, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v0, :cond_2c

    .line 86
    iget-object v0, p4, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object p4, p4, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/Spdycb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    goto :goto_31

    :cond_2c
    const-string p1, "[SpdySessionCallBack.spdyRequestRecvCallback] - no sessionCallBack."

    .line 88
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    const/4 p1, 0x3

    const-string p2, "spdyPingRecvCallback"

    .line 90
    invoke-static {p2, p1, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .registers 7

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdySessionCloseCallback] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_20

    .line 196
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V

    goto :goto_25

    :cond_20
    const-string p1, "[SpdySessionCallBack.spdySessionCloseCallback] - no sessionCallBack."

    .line 198
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .registers 7

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdySessionConnectCB] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 118
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_2d

    .line 119
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v1

    .line 120
    iget-object v3, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v3, p1, p2}, Lorg/android/spdy/SessionCb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    const-string p1, "spdySessionConnectCB"

    .line 121
    invoke-static {p1, v0, v1, v2}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_32

    :cond_2d
    const-string p1, "[SpdySessionCallBack.spdySessionConnectCB] - no sessionCallBack."

    .line 123
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_32
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .registers 8

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdySessionFailedError] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 167
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 168
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_30

    .line 169
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v1

    .line 170
    iget-object v3, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v3, p1, p2, p3}, Lorg/android/spdy/SessionCb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V

    .line 171
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->clearAllStreamCb()V

    const-string p1, "spdySessionFailedError"

    .line 172
    invoke-static {p1, v0, v1, v2}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_35

    :cond_30
    const-string p1, "[SpdySessionCallBack.spdySessionFailedError] - no sessionCallBack."

    .line 174
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_35
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .registers 8

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdySessionOnWritable] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 181
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 182
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_37

    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    instance-of v2, v2, Lorg/android/spdy/SessionExtraCb;

    if-eqz v2, :cond_37

    .line 183
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v1

    .line 184
    iget-object v3, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    check-cast v3, Lorg/android/spdy/SessionExtraCb;

    check-cast v3, Lorg/android/spdy/SessionExtraCb;

    invoke-interface {v3, p1, p2, p3}, Lorg/android/spdy/SessionExtraCb;->spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V

    const-string p1, "spdySessionOnWritable"

    .line 185
    invoke-static {p1, v0, v1, v2}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_3c

    :cond_37
    const-string p1, "[SpdySessionCallBack.spdySessionOnWritable] - no sessionCallBack."

    .line 187
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_3c
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JIILorg/android/spdy/SuperviseData;)V
    .registers 18

    move-object v7, p1

    move/from16 v8, p5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpdySessionCallBack.spdyStreamCloseCallback] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tnet-jni"

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v9

    .line 65
    invoke-virtual {p1, v8}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 66
    iget-object v2, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v2, :cond_5d

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "endtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v5, v0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v0, v1

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V

    .line 71
    invoke-virtual {p1, v8}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    goto :goto_62

    :cond_5d
    const-string v0, "[SpdySessionCallBack.spdyStreamCloseCallback] - no sessionCallBack."

    .line 73
    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    const/4 v0, 0x3

    const-string v1, "spdyStreamCloseCallback"

    .line 75
    invoke-static {v1, v0, v9, v10}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 76
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method
