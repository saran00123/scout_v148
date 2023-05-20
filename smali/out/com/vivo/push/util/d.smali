.class public final Lcom/vivo/push/util/d;
.super Ljava/lang/Object;
.source "ClientReportUtil.java"


# direct methods
.method public static a(JLjava/util/HashMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/vivo/push/b/x;

    invoke-direct {v0, p0, p1}, Lcom/vivo/push/b/x;-><init>(J)V

    .line 1043
    iput-object p2, v0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 1069
    iget-object p0, v0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    const-string p1, "ReporterCommand"

    if-nez p0, :cond_13

    const-string p0, "reportParams is empty"

    .line 1070
    invoke-static {p1, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1073
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "report message reportType:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/vivo/push/b/x;->d:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",msgId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iget-object p2, v0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    const-string v1, "messageID"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1082
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_3f

    .line 1085
    :cond_35
    iget-object p2, v0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    const-string v1, "message_id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1073
    :goto_3f
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_49
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    const/4 p0, 0x1

    return p0
.end method
