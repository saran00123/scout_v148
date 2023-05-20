.class final Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;
.super Ljava/lang/Object;
.source "HuaWeiRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->getToken(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "onToken"

    const-string v1, "5.3.0.304"

    const-string v2, ""

    const-string v3, "MPS:HuaWeiRegister"

    const/4 v4, 0x0

    .line 63
    :try_start_9
    iget-object v5, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 64
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.huawei.hms.client.appid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_30

    const-string v6, "appid="

    .line 67
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_31

    :cond_30
    move-object v5, v2

    :goto_31
    const/4 v6, 0x2

    .line 70
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "appId"

    aput-object v8, v7, v4

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v3, v0, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 72
    iget-object v5, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_5b

    .line 74
    :cond_4f
    iget-object v7, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v7

    const-string v9, "HCM"

    invoke-virtual {v7, v5, v9}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    :goto_5b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 78
    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "token"

    aput-object v7, v6, v4

    aput-object v5, v6, v8

    invoke-static {v3, v0, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6d} :catch_7c

    .line 80
    :try_start_6d
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    sget-object v6, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v6, v6, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    invoke-static {v0, v6, v5, v1}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_77

    goto :goto_92

    :catch_77
    move-exception v0

    .line 82
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_92

    :catch_7c
    move-exception v0

    .line 86
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getToken failed."

    invoke-static {v3, v5, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 88
    :try_start_84
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;->val$context:Landroid/content/Context;

    sget-object v3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v3, v3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    invoke-static {v0, v3, v2, v1}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_92
    :goto_92
    return-void
.end method
