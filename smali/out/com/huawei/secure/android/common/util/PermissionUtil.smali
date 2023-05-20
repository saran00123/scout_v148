.class public Lcom/huawei/secure/android/common/util/PermissionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PermissionUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/exception/NoPermissionCheckerException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/huawei/secure/android/common/util/PermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/exception/NoPermissionCheckerException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_a

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0

    :catchall_a
    move-exception p0

    .line 3
    sget-object p1, Lcom/huawei/secure/android/common/util/PermissionUtil;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkPermission: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , you should implementation support library or androidx library"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p0, Lcom/huawei/secure/android/common/exception/NoPermissionCheckerException;

    const-string p1, "you should implementation support library or androidx library"

    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/exception/NoPermissionCheckerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/exception/NoPermissionCheckerException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/huawei/secure/android/common/util/PermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method
