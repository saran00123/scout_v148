.class public final Lcom/google/android/gms/internal/common/zzg;
.super Ljava/lang/Object;


# static fields
.field private static volatile zziy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/common/zzg;->zzam()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/common/zzg;->zziy:Z

    return-void
.end method

.method public static getDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 4
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static zzam()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
