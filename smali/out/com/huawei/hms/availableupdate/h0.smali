.class public Lcom/huawei/hms/availableupdate/h0;
.super Lcom/huawei/hms/availableupdate/p;
.source "UpdateWizard.java"

# interfaces
.implements Lcom/huawei/hms/availableupdate/g;


# instance fields
.field public j:Lcom/huawei/hms/availableupdate/f;

.field public k:Lcom/huawei/hms/availableupdate/h;

.field public l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/availableupdate/p;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/huawei/hms/availableupdate/h0;->l:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 7

    .line 2
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    invoke-direct {v0, p0}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".hms.update.provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-le v3, v4, :cond_31

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v3, v4, :cond_29

    goto :goto_2f

    .line 11
    :cond_29
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/utils/PackageManagerHelper;->hasProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_2f
    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-eqz v0, :cond_39

    .line 17
    invoke-static {p0, v2, p1}, Lcom/huawei/hms/update/provider/UpdateProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 19
    :cond_39
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V
    .registers 5

    if-eqz p0, :cond_13

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/huawei/hms/availableupdate/h0$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/hms/availableupdate/h0$a;-><init>(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/availableupdate/h0;Landroid/content/Intent;Lcom/huawei/hms/availableupdate/g;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/content/Intent;Lcom/huawei/hms/availableupdate/g;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/io/File;)V
    .registers 7

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onDownloadPackage, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hms/availableupdate/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reveived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateWizard"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_6a

    const/16 p4, 0x834

    if-eq p1, p4, :cond_4c

    const/16 p2, 0x835

    if-eq p1, p2, :cond_86

    packed-switch p1, :pswitch_data_88

    goto :goto_86

    .line 79
    :pswitch_3a
    const-class p1, Lcom/huawei/hms/availableupdate/f0;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_86

    .line 82
    :pswitch_40
    const-class p1, Lcom/huawei/hms/availableupdate/w;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_86

    .line 83
    :pswitch_46
    const-class p1, Lcom/huawei/hms/availableupdate/e0;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_86

    .line 84
    :cond_4c
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->d:Lcom/huawei/hms/availableupdate/q;

    if-eqz p1, :cond_86

    instance-of p1, p1, Lcom/huawei/hms/availableupdate/y;

    if-eqz p1, :cond_86

    const/4 p1, 0x0

    if-ltz p2, :cond_60

    if-lez p3, :cond_60

    int-to-long p1, p2

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    int-to-long p3, p3

    .line 87
    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 90
    :cond_60
    iput p1, p0, Lcom/huawei/hms/availableupdate/h0;->l:I

    .line 91
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/p;->d:Lcom/huawei/hms/availableupdate/q;

    check-cast p2, Lcom/huawei/hms/availableupdate/y;

    invoke-virtual {p2, p1}, Lcom/huawei/hms/availableupdate/y;->b(I)V

    goto :goto_86

    .line 92
    :cond_6a
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->a()V

    if-nez p4, :cond_73

    .line 94
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    goto :goto_86

    .line 97
    :cond_73
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/h0;->k:Lcom/huawei/hms/availableupdate/h;

    iget-object p1, p1, Lcom/huawei/hms/availableupdate/h;->e:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/huawei/hms/utils/FileUtil;->verifyHash(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 98
    invoke-virtual {p0, p4}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/io/File;)V

    goto :goto_86

    :cond_81
    const-string p1, "Hash value mismatch for download file"

    .line 100
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x899
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public a(ILcom/huawei/hms/availableupdate/h;)V
    .registers 5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onCheckUpdate, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hms/availableupdate/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateWizard"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2d

    packed-switch p1, :pswitch_data_34

    .line 39
    const-class p1, Lcom/huawei/hms/availableupdate/d0;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_32

    .line 40
    :pswitch_27
    const-class p1, Lcom/huawei/hms/availableupdate/d0;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_32

    .line 41
    :cond_2d
    iput-object p2, p0, Lcom/huawei/hms/availableupdate/h0;->k:Lcom/huawei/hms/availableupdate/h;

    .line 42
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->d()V

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x4b1
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public final a(Landroid/content/Intent;Lcom/huawei/hms/availableupdate/g;)V
    .registers 12

    const-string v0, "UpdateWizard"

    const/16 v1, 0x4b1

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "status"

    const/16 v4, -0x63

    .line 181
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckUpdateCallBack status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_d5

    const-string v4, "failreason"

    .line 189
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTargetAppUpdate reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const/4 v4, 0x7

    if-ne v3, v4, :cond_c8

    const-string v3, "updatesdk_update_info"

    .line 196
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 197
    instance-of v3, p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    if-eqz v3, :cond_d4

    .line 198
    check-cast p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    .line 200
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getPackage_()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getVersionCode_()I

    move-result v5

    .line 204
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getDownurl_()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getSize_()I

    move-result v7

    .line 208
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getSha256_()Ljava/lang/String;

    move-result-object v8

    .line 211
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c4

    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_c4

    .line 217
    :cond_77
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->c()I

    move-result p1

    if-ge v5, p1, :cond_a7

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckUpdateCallBack versionCode is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bean.getClientVersionCode() is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {v1}, Lcom/huawei/hms/update/ui/UpdateBean;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x4b3

    .line 219
    invoke-static {p2, p1, v2}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    return-void

    .line 224
    :cond_a7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    goto :goto_c0

    .line 230
    :cond_b4
    new-instance p1, Lcom/huawei/hms/availableupdate/h;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/huawei/hms/availableupdate/h;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x3e8

    .line 232
    invoke-static {p2, v0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    goto :goto_d4

    .line 233
    :cond_c0
    :goto_c0
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    return-void

    .line 234
    :cond_c4
    :goto_c4
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    return-void

    :cond_c8
    const/4 p1, 0x3

    if-ne v3, p1, :cond_d1

    const/16 p1, 0x4b2

    .line 258
    invoke-static {p2, p1, v2}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    goto :goto_d4

    .line 261
    :cond_d1
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    :cond_d4
    :goto_d4
    return-void

    :catch_d5
    move-exception p1

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent has some error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    return-void
.end method

.method public final a(Lcom/huawei/hms/availableupdate/g;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_26

    .line 175
    :cond_10
    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 179
    :cond_17
    iget-object v1, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {v1}, Lcom/huawei/hms/update/ui/UpdateBean;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/huawei/hms/availableupdate/h0$b;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/availableupdate/h0$b;-><init>(Lcom/huawei/hms/availableupdate/h0;Lcom/huawei/hms/availableupdate/g;)V

    invoke-static {v0, v1, v2}, Lcom/huawei/updatesdk/UpdateSdkAPI;->checkTargetAppUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    return-void

    :cond_26
    :goto_26
    const/16 v0, 0x4b1

    const/4 v1, 0x0

    .line 180
    invoke-static {p1, v0, v1}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/availableupdate/q;)V
    .registers 4

    const-string v0, "UpdateWizard"

    const-string v1, "Enter onCancel."

    .line 128
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/a0;

    if-eqz v0, :cond_f

    .line 131
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->g()V

    goto :goto_47

    .line 132
    :cond_f
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/s;

    if-eqz v0, :cond_1a

    .line 133
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->c()V

    .line 134
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->g()V

    goto :goto_47

    .line 135
    :cond_1a
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/y;

    if-eqz v0, :cond_27

    .line 136
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->c()V

    .line 137
    const-class p1, Lcom/huawei/hms/availableupdate/x;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_47

    .line 138
    :cond_27
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/x;

    if-eqz v0, :cond_34

    .line 139
    const-class p1, Lcom/huawei/hms/availableupdate/y;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->f()V

    goto :goto_47

    .line 141
    :cond_34
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/w;

    if-eqz v0, :cond_3c

    .line 142
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->g()V

    goto :goto_47

    .line 143
    :cond_3c
    instance-of p1, p1, Lcom/huawei/hms/availableupdate/v;

    if-eqz p1, :cond_44

    .line 144
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->g()V

    goto :goto_47

    .line 146
    :cond_44
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    :goto_47
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 6

    .line 101
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5f

    .line 106
    :cond_d
    invoke-static {v0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "UpdateWizard"

    if-nez p1, :cond_1e

    const-string p1, "In startInstaller, Failed to creates a Uri from a file."

    .line 108
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    return-void

    .line 113
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_25

    return-void

    .line 117
    :cond_25
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.android.package-archive"

    .line 118
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 119
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    .line 120
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    :try_start_3b
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->getRequestCode()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_42
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_5f

    :catch_43
    move-exception p1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In startInstaller, Failed to start package installer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/availableupdate/q;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 150
    :cond_b
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->a()V

    .line 152
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/availableupdate/q;

    .line 155
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    instance-of v0, p1, Lcom/huawei/hms/availableupdate/a0;

    if-eqz v0, :cond_30

    const-string v0, "hms_update_title"

    .line 157
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/availableupdate/a0;

    iget-object v1, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/availableupdate/a0;->a(Ljava/lang/String;)V

    .line 162
    :cond_30
    iget v0, p0, Lcom/huawei/hms/availableupdate/h0;->l:I

    if-lez v0, :cond_40

    instance-of v0, p1, Lcom/huawei/hms/availableupdate/y;

    if-eqz v0, :cond_40

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/availableupdate/y;

    iget v1, p0, Lcom/huawei/hms/availableupdate/h0;->l:I

    invoke-virtual {v0, v1}, Lcom/huawei/hms/availableupdate/y;->a(I)V

    .line 165
    :cond_40
    invoke-virtual {p1, p0}, Lcom/huawei/hms/availableupdate/q;->a(Lcom/huawei/hms/availableupdate/p;)V

    .line 166
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/p;->d:Lcom/huawei/hms/availableupdate/q;
    :try_end_45
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_45} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_45} :catch_48
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_45} :catch_46

    goto :goto_65

    :catch_46
    move-exception p1

    goto :goto_4b

    :catch_48
    move-exception p1

    goto :goto_4b

    :catch_4a
    move-exception p1

    .line 168
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In showDialog, Failed to show the dialog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return-void
.end method

.method public final a(Landroid/app/Activity;)Z
    .registers 3

    .line 21
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/utils/HMSPackageManager;->isApkUpdateNecessary(I)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_12
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->a()V

    .line 25
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    return v0
.end method

.method public b(Lcom/huawei/hms/availableupdate/q;)V
    .registers 4

    const-string v0, "UpdateWizard"

    const-string v1, "Enter onDoWork."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/a0;

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->b()V

    .line 6
    const-class p1, Lcom/huawei/hms/availableupdate/s;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p0, p0}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;)V

    goto :goto_53

    .line 8
    :cond_17
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/x;

    if-eqz v0, :cond_22

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->b()V

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->g()V

    goto :goto_53

    .line 11
    :cond_22
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/w;

    if-eqz v0, :cond_2f

    .line 12
    const-class p1, Lcom/huawei/hms/availableupdate/y;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->f()V

    goto :goto_53

    .line 14
    :cond_2f
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/v;

    if-eqz v0, :cond_3c

    .line 15
    const-class p1, Lcom/huawei/hms/availableupdate/y;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    .line 16
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->f()V

    goto :goto_53

    .line 17
    :cond_3c
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/d0;

    if-eqz v0, :cond_44

    .line 18
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    goto :goto_53

    .line 19
    :cond_44
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/e0;

    if-eqz v0, :cond_4c

    .line 20
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    goto :goto_53

    .line 21
    :cond_4c
    instance-of p1, p1, Lcom/huawei/hms/availableupdate/f0;

    if-eqz p1, :cond_53

    .line 22
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    :cond_53
    :goto_53
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/h0;->j:Lcom/huawei/hms/availableupdate/f;

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Lcom/huawei/hms/availableupdate/f;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/availableupdate/h0;->j:Lcom/huawei/hms/availableupdate/f;

    :cond_a
    return-void
.end method

.method public final d()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/android/SystemUtils;->getNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    .line 8
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current network is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateWizard"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WIFI"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 10
    const-class v0, Lcom/huawei/hms/availableupdate/y;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->f()V

    const-string v0, "current network is wifi"

    .line 12
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 14
    :cond_3d
    const-class v0, Lcom/huawei/hms/availableupdate/v;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    const-string v0, "current network is not wifi"

    .line 15
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/p;->a(Z)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_f

    .line 2
    iget v0, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    goto :goto_14

    .line 4
    :cond_f
    iget v0, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/availableupdate/p;->a(II)V

    :goto_14
    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2b

    .line 7
    :cond_d
    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    .line 12
    :cond_14
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->c()V

    .line 13
    new-instance v1, Lcom/huawei/hms/availableupdate/d;

    new-instance v2, Lcom/huawei/hms/availableupdate/e;

    invoke-direct {v2, v0}, Lcom/huawei/hms/availableupdate/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/huawei/hms/availableupdate/d;-><init>(Lcom/huawei/hms/availableupdate/f;)V

    iput-object v1, p0, Lcom/huawei/hms/availableupdate/h0;->j:Lcom/huawei/hms/availableupdate/f;

    .line 14
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/h0;->j:Lcom/huawei/hms/availableupdate/f;

    iget-object v1, p0, Lcom/huawei/hms/availableupdate/h0;->k:Lcom/huawei/hms/availableupdate/h;

    invoke-interface {v0, p0, v1}, Lcom/huawei/hms/availableupdate/f;->a(Lcom/huawei/hms/availableupdate/g;Lcom/huawei/hms/availableupdate/h;)V

    return-void

    .line 15
    :cond_2b
    :goto_2b
    const-class v0, Lcom/huawei/hms/availableupdate/e0;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    return-void
.end method

.method public getRequestCode()I
    .registers 2

    const/16 v0, 0x7d6

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/availableupdate/p;->onBridgeActivityCreate(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x6

    .line 7
    iput v0, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    .line 13
    :cond_12
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->isNeedConfirm()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 14
    const-class p1, Lcom/huawei/hms/availableupdate/a0;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    goto :goto_30

    .line 16
    :cond_28
    const-class p1, Lcom/huawei/hms/availableupdate/s;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/h0;->a(Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p0, p0}, Lcom/huawei/hms/availableupdate/h0;->a(Lcom/huawei/hms/availableupdate/g;)V

    :goto_30
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->c()V

    .line 2
    invoke-super {p0}, Lcom/huawei/hms/availableupdate/p;->onBridgeActivityDestroy()V

    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/availableupdate/p;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onBridgeActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 5
    :cond_d
    iget p2, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2e

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->getRequestCode()I

    move-result p2

    if-ne p1, p2, :cond_2e

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->g:Ljava/lang/String;

    iget p2, p0, Lcom/huawei/hms/availableupdate/p;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/availableupdate/p;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 7
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    goto :goto_2c

    .line 9
    :cond_29
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/h0;->e()V

    :goto_2c
    const/4 p1, 0x1

    return p1

    :cond_2e
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/availableupdate/p;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_c

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)V

    return-void

    :cond_c
    const/4 p2, 0x4

    if-ne p2, p1, :cond_2a

    const-string p1, "UpdateWizard"

    const-string p2, "In onKeyUp, Call finish."

    .line 7
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2a

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2a
    return-void
.end method
