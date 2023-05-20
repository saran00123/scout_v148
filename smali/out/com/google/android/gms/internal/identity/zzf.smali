.class public final Lcom/google/android/gms/internal/identity/zzf;
.super Lcom/google/android/gms/internal/identity/zzh;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final zzj:I


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/identity/zzh;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/identity/zzf;->zzj:I

    iput-object p2, p0, Lcom/google/android/gms/internal/identity/zzf;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private final setActivity(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/identity/zzf;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/identity/zzf;Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/identity/zzf;->setActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;)V
    .registers 7

    const/high16 v0, 0x40000000    # 2.0f

    const-string v1, "AddressClientImpl"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/gms/internal/identity/zzf;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/google/android/gms/internal/identity/zzf;->zzj:I

    invoke-virtual {p2, v3, p1, v0}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    :try_start_1a
    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1a .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    const-string p2, "Exception settng pending result"

    :goto_21
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_25
    const/4 v3, 0x0

    if-eqz p2, :cond_31

    const-string v3, "com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/app/PendingIntent;

    :cond_31
    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p2, p1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p1

    if-eqz p1, :cond_48

    :try_start_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/identity/zzf;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/google/android/gms/internal/identity/zzf;->zzj:I

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3c .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    const-string p2, "Exception starting pending intent"

    goto :goto_21

    :cond_48
    :try_start_48
    iget-object p1, p0, Lcom/google/android/gms/internal/identity/zzf;->mActivity:Landroid/app/Activity;

    iget p2, p0, Lcom/google/android/gms/internal/identity/zzf;->zzj:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2, v3, v0}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_5a

    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_48 .. :try_end_5a} :catch_5b

    :cond_5a
    return-void

    :catch_5b
    move-exception p1

    const-string p2, "Exception setting pending result"

    goto :goto_21
.end method
