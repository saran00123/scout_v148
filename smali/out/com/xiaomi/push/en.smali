.class public Lcom/xiaomi/push/en;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/en;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/en;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/en;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/en;->a:Lcom/xiaomi/push/en;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/en;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/en;->a:Lcom/xiaomi/push/en;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/en;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/en;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/en;->a:Lcom/xiaomi/push/en;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/push/en;->a:Lcom/xiaomi/push/en;

    return-object p0
.end method

.method private a(Lcom/xiaomi/clientreport/data/a;)V
    .registers 3

    instance-of v0, p1, Lcom/xiaomi/clientreport/data/PerfClientReport;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/push/en;->a:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/clientreport/data/PerfClientReport;

    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->reportPerf(Landroid/content/Context;Lcom/xiaomi/clientreport/data/PerfClientReport;)V

    goto :goto_17

    :cond_c
    instance-of v0, p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/xiaomi/push/en;->a:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->reportEvent(Landroid/content/Context;Lcom/xiaomi/clientreport/data/EventClientReport;)V

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IJJ)V
    .registers 14

    if-ltz p2, :cond_21

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_21

    cmp-long v0, p3, v0

    if-gtz v0, :cond_d

    goto :goto_21

    :cond_d
    iget-object v1, p0, Lcom/xiaomi/push/en;->a:Landroid/content/Context;

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/push/em;->a(Landroid/content/Context;IJJ)Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/clientreport/data/a;->setAppPackageName(Ljava/lang/String;)V

    const-string p1, "4_8_2"

    invoke-virtual {p2, p1}, Lcom/xiaomi/clientreport/data/a;->setSdkVersion(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/xiaomi/push/en;->a(Lcom/xiaomi/clientreport/data/a;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    .registers 14

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "messageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    const-string v1, "eventMessageType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 13

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "messageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    const-string v1, "eventMessageType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 16

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    :cond_d
    iget-object v1, p0, Lcom/xiaomi/push/en;->a:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/push/em;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/clientreport/data/a;->setAppPackageName(Ljava/lang/String;)V

    const-string p1, "4_8_2"

    invoke-virtual {p2, p1}, Lcom/xiaomi/clientreport/data/a;->setSdkVersion(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/xiaomi/push/en;->a(Lcom/xiaomi/clientreport/data/a;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v4, 0x138a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v4, 0x1389

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v4, 0xfa2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method
