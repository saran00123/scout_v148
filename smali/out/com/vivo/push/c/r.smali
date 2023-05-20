.class public final Lcom/vivo/push/c/r;
.super Lcom/vivo/push/c/o;
.source "OnUndoMsgReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 10

    .line 32
    check-cast p1, Lcom/vivo/push/b/u;

    .line 33
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 1286
    iget-boolean v0, v0, Lcom/vivo/push/d;->f:Z

    const-string v1, "remoteAppId"

    const-string v2, "messageID"

    const-string v3, "OnUndoMsgTask"

    if-eqz v0, :cond_67

    .line 33
    iget-object v0, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/util/y;->d(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    .line 2051
    iget-wide v4, p1, Lcom/vivo/push/b/u;->c:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_25

    .line 2052
    iget-wide v4, p1, Lcom/vivo/push/b/u;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    .line 3030
    :goto_26
    iget-object v5, p1, Lcom/vivo/push/b/v;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0, v4, v5}, Lcom/vivo/push/c/r;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, " vertify msg is error "

    .line 34
    invoke-static {v3, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/vivo/push/b/x;

    const-wide/16 v3, 0x3fd

    invoke-direct {v0, v3, v4}, Lcom/vivo/push/b/x;-><init>(J)V

    .line 36
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4022
    iget-wide v4, p1, Lcom/vivo/push/b/v;->e:J

    .line 37
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 40
    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    :cond_5d
    iput-object v3, v0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 43
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    return-void

    .line 47
    :cond_67
    iget-object v0, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    .line 5020
    iget-wide v4, p1, Lcom/vivo/push/b/u;->c:J

    .line 47
    invoke-static {v0, v4, v5}, Lcom/vivo/push/util/NotifyAdapterUtil;->repealNotifyById(Landroid/content/Context;J)Z

    move-result v0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "undo message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6020
    iget-wide v5, p1, Lcom/vivo/push/b/u;->c:J

    .line 48
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_ec

    .line 50
    iget-object v0, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u56de\u6536client\u901a\u77e5\u6210\u529f, \u4e0a\u62a5\u57cb\u70b9 1031, messageId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7020
    iget-wide v4, p1, Lcom/vivo/push/b/u;->c:J

    .line 50
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/push/util/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    .line 8020
    iget-wide v3, p1, Lcom/vivo/push/b/u;->c:J

    .line 8030
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "report message: "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", reportType: 1031"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ClientReportUtil"

    invoke-static {v5, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8031
    new-instance p1, Lcom/vivo/push/b/x;

    const-wide/16 v5, 0x407

    invoke-direct {p1, v5, v6}, Lcom/vivo/push/b/x;-><init>(J)V

    .line 8032
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 8033
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8034
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8035
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 8036
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8043
    :cond_e2
    iput-object v5, p1, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 8039
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    return-void

    .line 53
    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "undo message fail\uff0cmessageId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9020
    iget-wide v1, p1, Lcom/vivo/push/b/u;->c:J

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/vivo/push/c/r;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u56de\u6536client\u901a\u77e5\u5931\u8d25\uff0cmessageId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10020
    iget-wide v2, p1, Lcom/vivo/push/b/u;->c:J

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
