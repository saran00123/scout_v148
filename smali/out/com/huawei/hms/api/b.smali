.class final Lcom/huawei/hms/api/b;
.super Lcom/huawei/hms/api/HuaweiApiAvailability;
.source "HuaweiApiAvailabilityImpl.java"


# static fields
.field private static final b:Lcom/huawei/hms/api/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/huawei/hms/api/b;

    invoke-direct {v0}, Lcom/huawei/hms/api/b;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/b;->b:Lcom/huawei/hms/api/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiAvailability;-><init>()V

    return-void
.end method

.method protected static a(Landroid/app/Activity;)I
    .registers 2

    .line 59
    invoke-static {p0}, Lcom/huawei/hms/api/b;->a(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_e

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x3

    return p0
.end method

.method private static a(Landroid/content/Context;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "androidhwext:style/Theme.Emui"

    invoke-virtual {p0, v1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/app/Activity;ILcom/huawei/hms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 62
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorMessage(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_19

    .line 64
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    :cond_19
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorDialogButtonMessage(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p3

    .line 68
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorTitle(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 72
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    :cond_29
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;I)Landroid/content/Intent;
    .registers 5

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getErrorResolutionIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_40

    const/4 v0, 0x2

    if-eq p2, v0, :cond_40

    const/4 v0, 0x6

    if-eq p2, v0, :cond_35

    const/16 v0, 0x9

    if-eq p2, v0, :cond_24

    goto :goto_4b

    .line 54
    :cond_24
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 55
    const-class p2, Lcom/huawei/hms/update/note/AppSpoofResolution;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_4c

    .line 56
    :cond_35
    const-class p2, Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_4c

    .line 57
    :cond_40
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 58
    invoke-static {p1}, Lcom/huawei/hms/update/manager/UpdateManager;->startUpdateIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 p1, 0x0

    :goto_4c
    return-object p1
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    const-string v0, "activity must not be null."

    .line 75
    invoke-static {p0, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-static {p1, p3}, Lcom/huawei/hms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/huawei/hms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/api/AvailabilityException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/huawei/hms/common/api/AvailabilityException;

    invoke-direct {v0}, Lcom/huawei/hms/common/api/AvailabilityException;-><init>()V

    .line 80
    instance-of v1, p1, Lcom/huawei/hms/common/HuaweiApi;

    if-eqz v1, :cond_10

    .line 81
    check-cast p1, Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getConnectionResult(Lcom/huawei/hms/common/HuaweiApi;)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    goto :goto_16

    .line 83
    :cond_10
    check-cast p1, Lcom/huawei/hms/common/api/HuaweiApiCallable;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getConnectionResult(Lcom/huawei/hms/common/api/HuaweiApiCallable;)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    .line 86
    :goto_16
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    if-nez p1, :cond_1d

    return-void

    .line 87
    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The service is unavailable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/hms/common/api/AvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    throw v0
.end method

.method public static getInstance()Lcom/huawei/hms/api/b;
    .registers 1

    .line 1
    sget-object v0, Lcom/huawei/hms/api/b;->b:Lcom/huawei/hms/api/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getResolveErrorIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_40

    const/4 v1, 0x2

    if-eq p2, v1, :cond_40

    const/4 v0, 0x6

    if-eq p2, v0, :cond_35

    const/16 v0, 0x9

    if-eq p2, v0, :cond_24

    goto :goto_84

    .line 27
    :cond_24
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 28
    const-class p2, Lcom/huawei/hms/update/note/AppSpoofResolution;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_85

    .line 29
    :cond_35
    const-class p2, Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_85

    .line 30
    :cond_40
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 32
    new-instance p2, Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-direct {p2}, Lcom/huawei/hms/update/ui/UpdateBean;-><init>()V

    .line 33
    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setHmsOrApkUpgrade(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientPackageName(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getServicesVersionCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientVersionCode(I)V

    const-string v0, "C10132067"

    .line 36
    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppId(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getmContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_76

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->setmContext(Landroid/content/Context;)V

    :cond_76
    const-string v0, "hms_update_title"

    .line 40
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppName(Ljava/lang/String;)V

    .line 41
    invoke-static {p1, p2}, Lcom/huawei/hms/update/manager/UpdateManager;->getStartUpdateIntent(Landroid/content/Context;Lcom/huawei/hms/update/ui/UpdateBean;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_85

    :cond_84
    :goto_84
    const/4 p1, 0x0

    :goto_85
    return-object p1
.end method

.method public b(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getResolveErrorPendingIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_24

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 6
    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return-object p1
.end method

.method public varargs checkApiAccessible(Lcom/huawei/hms/common/HuaweiApi;[Lcom/huawei/hms/common/HuaweiApi;)Lcom/huawei/hmf/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;[",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    if-eqz p1, :cond_11

    .line 5
    :try_start_b
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/b;->a(Ljava/lang/Object;)V

    goto :goto_11

    :catch_f
    move-exception p1

    goto :goto_1f

    :cond_11
    :goto_11
    if-eqz p2, :cond_39

    .line 8
    array-length p1, p2

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_39

    aget-object v2, p2, v1

    .line 9
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/b;->a(Ljava/lang/Object;)V
    :try_end_1c
    .catch Lcom/huawei/hms/common/api/AvailabilityException; {:try_start_b .. :try_end_1c} :catch_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 13
    :goto_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkApi has AvailabilityException "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiApiAvailabilityImpl"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-object v0
.end method

.method public varargs checkApiAccessible(Lcom/huawei/hms/common/api/HuaweiApiCallable;[Lcom/huawei/hms/common/api/HuaweiApiCallable;)Lcom/huawei/hmf/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/api/HuaweiApiCallable;",
            "[",
            "Lcom/huawei/hms/common/api/HuaweiApiCallable;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    if-eqz p1, :cond_11

    .line 18
    :try_start_b
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/b;->a(Ljava/lang/Object;)V

    goto :goto_11

    :catch_f
    move-exception p1

    goto :goto_1f

    :cond_11
    :goto_11
    if-eqz p2, :cond_39

    .line 21
    array-length p1, p2

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_39

    aget-object v2, p2, v1

    .line 22
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/b;->a(Ljava/lang/Object;)V
    :try_end_1c
    .catch Lcom/huawei/hms/common/api/AvailabilityException; {:try_start_b .. :try_end_1c} :catch_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 26
    :goto_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiApiCallable checkApi has AvailabilityException "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiApiAvailabilityImpl"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-object v0
.end method

.method public getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .registers 6

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getResolveErrorPendingIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_2b

    const/high16 v0, 0x8000000

    .line 10
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return-object p1
.end method

.method public getErrPendingIntent(Landroid/content/Context;Lcom/huawei/hms/api/ConnectionResult;)Landroid/app/PendingIntent;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;
    .registers 6

    const-string v0, "activity must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getErrorDialog, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hms/api/b;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 7

    const-string v0, "activity must not be null."

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getErrorDialog, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/huawei/hms/common/internal/DialogRedirect;->getInstance(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/huawei/hms/common/internal/DialogRedirect;

    move-result-object p3

    .line 8
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;ILcom/huawei/hms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getErrorString(I)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getErrorString, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/api/ConnectionResult;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHuaweiServicesReady(Landroid/app/Activity;)Lcom/huawei/hmf/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/huawei/hmf/tasks/TaskCompletionSource;

    new-instance v1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1c9c380

    invoke-virtual {p0, v3, v4}, Lcom/huawei/hms/api/b;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result v3

    .line 7
    invoke-virtual {p0, p1, v3}, Lcom/huawei/hms/api/b;->getResolveErrorIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v4

    .line 8
    const-class v5, Lcom/huawei/hms/api/ResolutionDelegate;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v4, :cond_4a

    .line 10
    new-instance v2, Lcom/huawei/hms/api/b$a;

    invoke-direct {v2, p0, v0}, Lcom/huawei/hms/api/b$a;-><init>(Lcom/huawei/hms/api/b;[Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    const-string v0, "CALLBACK_METHOD"

    invoke-static {v0, v2}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->registerResponseCallback(Ljava/lang/String;Lcom/huawei/hms/activity/internal/BusResponseCallback;)V

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resolution"

    .line 27
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_74

    :cond_4a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5b

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    const-class v2, Lcom/huawei/hms/activity/EnableServiceActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_74

    :cond_5b
    const-string p1, "HuaweiApiAvailabilityImpl"

    if-nez v3, :cond_65

    const-string v0, "The HMS service is available."

    .line 35
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_65
    const-string v3, "Framework can not solve the availability problem."

    .line 37
    invoke-static {p1, v3}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    aget-object p1, v0, v2

    new-instance v0, Lcom/huawei/hms/common/api/AvailabilityException;

    invoke-direct {v0}, Lcom/huawei/hms/common/api/AvailabilityException;-><init>()V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_74
    return-object v1
.end method

.method public getResolveErrorIntent(Landroid/app/Activity;I)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getResolveErrorIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_40

    const/4 v1, 0x2

    if-eq p2, v1, :cond_40

    const/4 v0, 0x6

    if-eq p2, v0, :cond_35

    const/16 v0, 0x9

    if-eq p2, v0, :cond_24

    goto :goto_84

    .line 25
    :cond_24
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 26
    const-class p2, Lcom/huawei/hms/update/note/AppSpoofResolution;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_85

    .line 27
    :cond_35
    const-class p2, Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_85

    .line 28
    :cond_40
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 30
    new-instance p2, Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-direct {p2}, Lcom/huawei/hms/update/ui/UpdateBean;-><init>()V

    .line 31
    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setHmsOrApkUpgrade(Z)V

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientPackageName(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getServicesVersionCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientVersionCode(I)V

    const-string v0, "C10132067"

    .line 34
    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppId(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getmContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_76

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->setmContext(Landroid/content/Context;)V

    :cond_76
    const-string v0, "hms_update_title"

    .line 38
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppName(Ljava/lang/String;)V

    .line 39
    invoke-static {p1, p2}, Lcom/huawei/hms/update/manager/UpdateManager;->getStartUpdateIntent(Landroid/app/Activity;Lcom/huawei/hms/update/ui/UpdateBean;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_85

    :cond_84
    :goto_84
    const/4 p1, 0x0

    :goto_85
    return-object p1
.end method

.method public getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getResolveErrorPendingIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->getResolveErrorIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_24

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 6
    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return-object p1
.end method

.method public isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I
    .registers 4

    const-string v0, "context must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageStates(Ljava/lang/String;)Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_20
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object p1

    const v0, 0x13a54c0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/utils/HMSPackageManager;->isApkUpdateNecessary(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x2

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public isHuaweiMobileServicesAvailable(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getServicesVersionCode()I

    move-result v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I
    .registers 4

    const-string v0, "context must not be null."

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p1, p2}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public isUserResolvableError(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/api/b;->isUserResolvableError(ILandroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public isUserResolvableError(ILandroid/app/PendingIntent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p2, :cond_8

    return v1

    :cond_8
    if-eq p1, v1, :cond_15

    const/4 p2, 0x2

    if-eq p1, p2, :cond_15

    const/4 p2, 0x6

    if-eq p1, p2, :cond_15

    const/16 p2, 0x9

    if-eq p1, p2, :cond_15

    return v0

    :cond_15
    return v1
.end method

.method public popupErrNotification(Landroid/content/Context;Lcom/huawei/hms/api/ConnectionResult;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->showErrorNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public resolveError(Landroid/app/Activity;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hms/api/b;->resolveError(Landroid/app/Activity;IILandroid/app/PendingIntent;)V

    return-void
.end method

.method public resolveError(Landroid/app/Activity;IILandroid/app/PendingIntent;)V
    .registers 14

    const-string v0, "activity must not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HuaweiApiAvailabilityImpl"

    if-eqz p4, :cond_1e

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter resolveError, param pendingIntent is not null. and.errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 9
    :cond_1e
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter resolveError, param pendingIntent is  null. get pendingIntent from error code.and.errorCode: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object p4

    :goto_36
    if-eqz p4, :cond_6e

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In resolveError, start pendingIntent.errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_4c
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_59
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4c .. :try_end_59} :catch_5a

    goto :goto_6e

    .line 20
    :catch_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Enter resolveError, start pendingIntent failed.errorCode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hms/api/b;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p1

    return p1
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 5

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/api/b;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string p3, "HuaweiMobileServicesErrorDialog"

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;ILandroid/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 6

    .line 7
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/huawei/hms/api/b;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p1

    return p1
.end method

.method public showErrorNotification(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "context must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter showErrorNotification, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hms/api/b;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_2a

    const-string p1, "showErrorNotification errorDialog can not be null"

    .line 5
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2a
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
