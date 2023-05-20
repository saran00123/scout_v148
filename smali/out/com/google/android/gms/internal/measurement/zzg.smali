.class public final Lcom/google/android/gms/internal/measurement/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.2"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final zzb:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zza:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x18

    const-string v4, "JobSchedulerCompat"

    const/4 v5, 0x0

    if-lt v0, v3, :cond_35

    const/4 v0, 0x4

    :try_start_c
    new-array v0, v0, [Ljava/lang/Class;

    const-class v6, Landroid/app/job/JobInfo;

    aput-object v6, v0, v2

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v6

    const-class v6, Landroid/app/job/JobScheduler;

    const-string v7, "scheduleAsPackage"

    .line 1
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_29} :catch_2a

    goto :goto_36

    .line 2
    :catch_2a
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object v0, v5

    .line 1
    :goto_36
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzg;->zzb:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_52

    :try_start_3c
    const-class v0, Landroid/os/UserHandle;

    const-string v3, "myUserId"

    new-array v2, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_52

    .line 5
    :catch_47
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "No myUserId method available"

    .line 6
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_52
    :goto_52
    sput-object v5, Lcom/google/android/gms/internal/measurement/zzg;->zzc:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobScheduler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzg;->zza:Landroid/app/job/JobScheduler;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const-string p2, "jobscheduler"

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    if-eqz p2, :cond_81

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzg;->zzb:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_7c

    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 2
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_7c

    .line 3
    :cond_17
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzg;

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzg;-><init>(Landroid/app/job/JobScheduler;)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzg;->zzc:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    if-eqz p2, :cond_43

    :try_start_21
    const-class v0, Landroid/os/UserHandle;

    new-array v1, p3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_43

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_31} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_31} :catch_32

    goto :goto_44

    :catch_32
    move-exception p2

    goto :goto_35

    :catch_34
    move-exception p2

    :goto_35
    const/4 v0, 0x6

    const-string v1, "JobSchedulerCompat"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "myUserId invocation illegal"

    .line 8
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    move p2, p3

    :goto_44
    const-string v0, "com.google.android.gms"

    const-string v1, "UploadAlarm"

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzg;->zzb:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_75

    :try_start_4c
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zza:Landroid/app/job/JobScheduler;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, p3

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    const/4 p2, 0x3

    aput-object v1, v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_7b

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_6c} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4c .. :try_end_6c} :catch_6d

    goto :goto_7b

    :catch_6d
    move-exception p2

    goto :goto_70

    :catch_6f
    move-exception p2

    :goto_70
    const-string p3, "error calling scheduleAsPackage"

    .line 11
    invoke-static {v1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_75
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zza:Landroid/app/job/JobScheduler;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    :cond_7b
    :goto_7b
    return p3

    .line 3
    :cond_7c
    :goto_7c
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0

    :cond_81
    const/4 p0, 0x0

    .line 13
    throw p0
.end method
