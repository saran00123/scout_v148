.class public Lcom/xiaomi/push/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/clientreport/processor/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/br;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/xiaomi/clientreport/processor/c;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    return-void
.end method

.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    invoke-interface {v0}, Lcom/xiaomi/clientreport/processor/c;->a()V

    :cond_9
    const-string v0, "begin read and send perf / event"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    instance-of v0, v0, Lcom/xiaomi/clientreport/processor/IEventProcessor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_39

    const-string v1, "sp_client_report_status"

    if-eqz v0, :cond_26

    :try_start_16
    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v0

    const-string v2, "event_last_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_22
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/bv;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3d

    :cond_26
    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    instance-of v0, v0, Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v0

    const-string v2, "perf_last_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_39

    goto :goto_22

    :catch_39
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return-void
.end method
