.class public final Lcom/huawei/hms/opendevice/m;
.super Ljava/lang/Thread;
.source "ReportAaidToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/opendevice/n;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/hms/opendevice/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/huawei/hms/opendevice/p;->a()Z

    move-result v0

    const-string v1, "ReportAaidToken"

    if-nez v0, :cond_e

    const-string v0, "Not HW Phone."

    .line 2
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v0, "AAID is empty."

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_29
    iget-object v2, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/hms/opendevice/m;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/huawei/hms/opendevice/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v0, "This time need not report."

    .line 8
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_39
    iget-object v2, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v2

    const-string v3, "region"

    invoke-virtual {v2, v3}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v0, "The data storage region is empty."

    .line 11
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_51
    iget-object v1, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "com.huawei.hms.opendevicesdk"

    const-string v5, "ROOT"

    invoke-static {v1, v4, v5, v3, v2}, Lcom/huawei/hms/opendevice/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    return-void

    .line 14
    :cond_63
    iget-object v2, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/hms/opendevice/m;->b:Ljava/lang/String;

    invoke-static {v2, v0, v4}, Lcom/huawei/hms/opendevice/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v4, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/rest/appdata/v1/aaid/report"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v2, v3}, Lcom/huawei/hms/opendevice/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/huawei/hms/opendevice/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/hms/opendevice/m;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lcom/huawei/hms/opendevice/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
