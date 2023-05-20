.class public Lcom/xiaomi/push/em;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/em$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/em$a;

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(I)I
    .registers 1

    if-lez p0, :cond_5

    add-int/lit16 p0, p0, 0x3e8

    goto :goto_6

    :cond_5
    const/4 p0, -0x1

    :goto_6
    return p0
.end method

.method public static a(Ljava/lang/Enum;)I
    .registers 2

    if-eqz p0, :cond_23

    instance-of v0, p0, Lcom/xiaomi/push/hv;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0x3e9

    goto :goto_24

    :cond_d
    instance-of v0, p0, Lcom/xiaomi/push/if;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0x7d1

    goto :goto_24

    :cond_18
    instance-of v0, p0, Lcom/xiaomi/push/fl;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0xbb9

    goto :goto_24

    :cond_23
    const/4 p0, -0x1

    :goto_24
    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;
    .registers 7

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->aA:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/ia;->aU:Lcom/xiaomi/push/ia;

    invoke-virtual {v3}, Lcom/xiaomi/push/ia;->a()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/ia;->aC:Lcom/xiaomi/push/ia;

    invoke-virtual {v3}, Lcom/xiaomi/push/ia;->a()I

    move-result v3

    const v4, 0x15180

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v2

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/push/ia;->aB:Lcom/xiaomi/push/ia;

    invoke-virtual {v5}, Lcom/xiaomi/push/ia;->a()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v3

    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;
    .registers 7

    invoke-static {p1}, Lcom/xiaomi/push/em;->a(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;

    move-result-object p0

    iput-object p2, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventId:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventType:I

    iput-wide p4, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventTime:J

    iput-object p6, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventContent:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;
    .registers 3

    new-instance v0, Lcom/xiaomi/clientreport/data/EventClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/EventClientReport;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->production:I

    const/16 v1, 0x3e9

    iput v1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->reportType:I

    iput-object p0, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->clientInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/clientreport/data/PerfClientReport;
    .registers 2

    new-instance v0, Lcom/xiaomi/clientreport/data/PerfClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/PerfClientReport;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->production:I

    iput v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->reportType:I

    const-string v1, "P100000"

    iput-object v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->clientInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;IJJ)Lcom/xiaomi/clientreport/data/PerfClientReport;
    .registers 6

    invoke-static {}, Lcom/xiaomi/push/em;->a()Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object p0

    iput p1, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I

    iput-wide p2, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    iput-wide p4, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/hz;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Lcom/xiaomi/push/hz;

    invoke-direct {v0}, Lcom/xiaomi/push/hz;-><init>()V

    const-string v1, "category_client_report_data"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/hz;->d(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/hz;->a(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/hz;->a(J)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->b(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->a(Z)Lcom/xiaomi/push/hz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/hz;->b(J)Lcom/xiaomi/push/hz;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/hz;->g(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const-string p0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/hz;->e(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-static {}, Lcom/xiaomi/push/service/bw;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/hz;->f(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const-string p0, "quality_support"

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/hz;->c(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/push/if;
    .registers 8

    sget-object v0, Lcom/xiaomi/push/em;->a:Ljava/util/Map;

    if-nez v0, :cond_2f

    const-class v0, Lcom/xiaomi/push/if;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/em;->a:Ljava/util/Map;

    if-nez v1, :cond_2a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaomi/push/em;->a:Ljava/util/Map;

    invoke-static {}, Lcom/xiaomi/push/if;->values()[Lcom/xiaomi/push/if;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    sget-object v5, Lcom/xiaomi/push/em;->a:Ljava/util/Map;

    iget-object v6, v4, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2a
    monitor-exit v0

    goto :goto_2f

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw p0

    :cond_2f
    :goto_2f
    sget-object v0, Lcom/xiaomi/push/em;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/if;

    if-eqz p0, :cond_3e

    goto :goto_40

    :cond_3e
    sget-object p0, Lcom/xiaomi/push/if;->a:Lcom/xiaomi/push/if;

    :goto_40
    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    const-string p0, "E100000"

    return-object p0

    :cond_7
    const/16 v0, 0xbb8

    if-ne p0, v0, :cond_e

    const-string p0, "E100002"

    return-object p0

    :cond_e
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_15

    const-string p0, "E100001"

    return-object p0

    :cond_15
    const/16 v0, 0x1770

    if-ne p0, v0, :cond_1c

    const-string p0, "E100003"

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->updateConfig(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/ek;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/ek;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/push/el;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/el;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->init(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/em;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/bx;->a(Landroid/content/Context;Lcom/xiaomi/push/hz;)V

    goto :goto_19

    :cond_12
    sget-object v0, Lcom/xiaomi/push/em;->a:Lcom/xiaomi/push/em$a;

    if-eqz v0, :cond_19

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/em$a;->uploader(Landroid/content/Context;Lcom/xiaomi/push/hz;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/push/em;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/hz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/bw;->a(Lcom/xiaomi/push/hz;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_7

    :cond_1f
    invoke-static {p0, v0}, Lcom/xiaomi/push/em;->a(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_7

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public static a(Lcom/xiaomi/push/em$a;)V
    .registers 1

    sput-object p0, Lcom/xiaomi/push/em;->a:Lcom/xiaomi/push/em$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method
