.class public final Lcom/google/android/gms/measurement/internal/zzea;
.super Lcom/google/android/gms/measurement/internal/zzf;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:J

.field private zzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;J)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzg:J

    return-void
.end method


# virtual methods
.method protected final zze()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzf()V
    .registers 15
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "unknown"

    if-nez v1, :cond_35

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 7
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    move-object v8, v2

    goto/16 :goto_9b

    .line 8
    :cond_35
    :try_start_35
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_39} :catch_3a

    goto :goto_4d

    .line 95
    :catch_3a
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    .line 11
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4d
    if-nez v6, :cond_52

    const-string v6, "manual_install"

    goto :goto_5b

    :cond_52
    const-string v7, "com.android.vending"

    .line 12
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    move-object v6, v5

    .line 8
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_32

    .line 15
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7c

    .line 18
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_7b} :catch_85

    goto :goto_7d

    :cond_7c
    move-object v8, v2

    .line 19
    :goto_7d
    :try_start_7d
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 20
    iget v3, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_81
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_81} :catch_82

    goto :goto_9b

    :catch_82
    move-object v7, v2

    move-object v2, v8

    goto :goto_86

    :catch_85
    move-object v7, v2

    .line 11
    :goto_86
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v8

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 23
    invoke-virtual {v8, v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, v7

    .line 7
    :goto_9b
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zza:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzd:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzb:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzc:I

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzea;->zze:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzf:J

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_c6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzs()Ljava/lang/String;

    move-result-object v2

    const-string v6, "am"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    move v2, v3

    goto :goto_c7

    :cond_c6
    move v2, v4

    :goto_c7
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzG()I

    move-result v6

    packed-switch v6, :pswitch_data_320

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzi()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto/16 :goto_160

    .line 41
    :pswitch_e1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzi()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 38
    :pswitch_f1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 41
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 36
    :pswitch_101
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 34
    :pswitch_111
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzi()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 32
    :pswitch_121
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzi()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 30
    :pswitch_131
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 28
    :pswitch_141
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzi()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_160

    .line 51
    :pswitch_151
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 45
    :goto_160
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;

    if-eqz v2, :cond_175

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    :cond_175
    const/4 v2, 0x0

    .line 48
    :try_start_176
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 49
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    .line 48
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzaB:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v7
    :try_end_185
    .catch Ljava/lang/IllegalStateException; {:try_start_176 .. :try_end_185} :catch_2ad

    const-string v8, "google_app_id"

    if-eqz v7, :cond_19a

    :try_start_189
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 52
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 53
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzv()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-static {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzht;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1a4

    .line 63
    :cond_19a
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v7

    .line 51
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzht;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    :goto_1a4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v3, v8, :cond_1ac

    move-object v8, v7

    goto :goto_1ad

    :cond_1ac
    move-object v8, v5

    :goto_1ad
    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 56
    invoke-virtual {v8, v2, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8
    :try_end_1be
    .catch Ljava/lang/IllegalStateException; {:try_start_189 .. :try_end_1be} :catch_2ad

    const-string v9, "admob_app_id"

    if-eqz v8, :cond_23f

    .line 71
    :try_start_1c2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdw;->zzaB:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 71
    invoke-virtual {v8, v2, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8
    :try_end_1d1
    .catch Ljava/lang/IllegalStateException; {:try_start_1c2 .. :try_end_1d1} :catch_2ad

    const-string v10, "ga_app_id"

    if-eqz v8, :cond_214

    :try_start_1d5
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 79
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 80
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzv()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 83
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1ef

    goto :goto_1f3

    .line 84
    :cond_1ef
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 85
    :goto_1f3
    invoke-static {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eq v3, v10, :cond_1fe

    move-object v5, v8

    :cond_1fe
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Ljava/lang/String;

    .line 87
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28c

    .line 88
    :cond_20c
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    goto/16 :goto_28c

    .line 73
    :cond_214
    new-instance v8, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 74
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v11

    .line 73
    invoke-direct {v8, v11}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v8, v10}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 76
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eq v3, v11, :cond_22a

    move-object v5, v10

    :cond_22a
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Ljava/lang/String;

    .line 77
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_238

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28c

    .line 78
    :cond_238
    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    goto :goto_28c

    .line 58
    :cond_23f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28c

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzaB:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 59
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    if-eqz v3, :cond_27b

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 65
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzv()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 68
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_270

    goto :goto_274

    .line 69
    :cond_270
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 70
    :goto_274
    invoke-static {v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    goto :goto_28c

    .line 61
    :cond_27b
    new-instance v3, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 62
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v5

    .line 61
    invoke-direct {v3, v5}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v3, v9}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    :cond_28c
    :goto_28c
    if-nez v6, :cond_2c1

    .line 88
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzea;->zza:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Ljava/lang/String;

    .line 91
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a7

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    goto :goto_2a9

    .line 104
    :cond_2a7
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Ljava/lang/String;

    .line 92
    :goto_2a9
    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2ac
    .catch Ljava/lang/IllegalStateException; {:try_start_1d5 .. :try_end_2ac} :catch_2ad

    goto :goto_2c1

    :catch_2ad
    move-exception v3

    .line 12
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 93
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    .line 95
    invoke-virtual {v5, v6, v0, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    :cond_2c1
    :goto_2c1
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzh:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    const-string v2, "analytics.safelisted_events"

    .line 98
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzq(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2d7

    goto :goto_30c

    .line 99
    :cond_2d7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2ed

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_30e

    .line 102
    :cond_2ed
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 103
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v5

    const-string v6, "safelisted event"

    .line 104
    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f1

    goto :goto_30e

    .line 98
    :cond_30c
    :goto_30c
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzh:Ljava/util/List;

    :goto_30e
    if-eqz v1, :cond_31d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzi:I

    return-void

    :cond_31d
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzi:I

    return-void

    :pswitch_data_320
    .packed-switch 0x0
        :pswitch_151
        :pswitch_141
        :pswitch_131
        :pswitch_121
        :pswitch_111
        :pswitch_101
        :pswitch_f1
        :pswitch_e1
    .end packed-switch
.end method

.method final zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .registers 36
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 2
    new-instance v31, Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzea;->zzi()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzea;->zzj()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzc:I

    int-to-long v6, v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzd:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzd:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzf:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const/4 v2, 0x0

    if-nez v0, :cond_d4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v10

    .line 13
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 18
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkk;->zzN()Ljava/security/MessageDigest;

    move-result-object v14

    const-wide/16 v15, -0x1

    if-nez v14, :cond_78

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v9, "Could not get MD5 instance"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :goto_76
    move-wide v9, v15

    goto :goto_d2

    :cond_78
    if-eqz v13, :cond_d1

    .line 13
    :try_start_7a
    invoke-virtual {v9, v0, v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zzW(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_bf

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v10

    .line 23
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x40

    invoke-virtual {v0, v10, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 24
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v10, :cond_af

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v10

    if-lez v10, :cond_af

    .line 27
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzO([B)J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_76

    :cond_af
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v10, "Could not get signatures"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_be} :catch_c1

    goto :goto_76

    :cond_bf
    move-wide v15, v11

    goto :goto_76

    :catch_c1
    move-exception v0

    .line 49
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v10, "Package name not found"

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d1
    move-wide v9, v11

    .line 20
    :goto_d2
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzf:J

    :cond_d4
    move-wide v13, v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzF()Z

    move-result v0

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v9

    .line 33
    iget-boolean v9, v9, Lcom/google/android/gms/measurement/internal/zzex;->zzp:Z

    const/4 v10, 0x1

    xor-int/lit8 v15, v9, 0x1

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 35
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzF()Z

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_f6

    :goto_f2
    move-object/from16 v20, v11

    goto/16 :goto_17c

    .line 36
    :cond_f6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznk;->zzb()Z

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    .line 36
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdw;->zzaj:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v9

    if-eqz v9, :cond_117

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 50
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v12, "Disabled IID for tests."

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_f2

    :cond_117
    :try_start_117
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 38
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v9

    .line 39
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v12, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 40
    invoke-virtual {v9, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_127
    .catch Ljava/lang/ClassNotFoundException; {:try_start_117 .. :try_end_127} :catch_17a

    if-nez v9, :cond_12a

    goto :goto_f2

    :cond_12a
    :try_start_12a
    new-array v12, v10, [Ljava/lang/Class;

    const-class v18, Landroid/content/Context;

    aput-object v18, v12, v2

    const-string v11, "getInstance"

    .line 41
    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v12, v2

    const/4 v10, 0x0

    .line 43
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_145} :catch_16b

    if-nez v11, :cond_148

    goto :goto_17a

    :cond_148
    :try_start_148
    const-string v10, "getFirebaseInstanceId"

    new-array v12, v2, [Ljava/lang/Class;

    .line 46
    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_158} :catch_15b

    move-object/from16 v20, v9

    goto :goto_17c

    .line 45
    :catch_15b
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v10, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_17a

    .line 26
    :catch_16b
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzf()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v10, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :catch_17a
    :goto_17a
    const/16 v20, 0x0

    .line 35
    :goto_17c
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v10

    .line 53
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzex;->zzh:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 54
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v11, v11, v16

    if-nez v11, :cond_199

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzfl;->zzc:J

    goto :goto_1a3

    .line 65
    :cond_199
    iget-wide v11, v9, Lcom/google/android/gms/measurement/internal/zzfl;->zzc:J

    .line 55
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :goto_1a3
    move-wide/from16 v21, v9

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget v11, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzi:I

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 57
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzs()Z

    move-result v23

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 59
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v9

    .line 60
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "deferred_analytics_collection"

    .line 61
    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    const-string v9, "google_analytics_default_allow_ad_personalization_signals"

    .line 64
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1dd

    const/16 v25, 0x0

    goto :goto_1e9

    .line 65
    :cond_1dd
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v25, v2

    .line 64
    :goto_1e9
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzg:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzea;->zzh:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    move-wide/from16 v26, v9

    .line 66
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_20a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzea;->zzl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    goto :goto_20c

    :cond_20a
    move-object/from16 v29, v10

    .line 68
    :goto_20c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzaw:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 68
    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_22c

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v2

    goto :goto_22e

    :cond_22c
    const-string v2, ""

    :goto_22e
    move-object/from16 v30, v2

    const-wide/32 v9, 0x9858

    const-wide/16 v17, 0x0

    move-object/from16 v28, v16

    move-object/from16 v2, v31

    move/from16 v32, v11

    move-object/from16 v33, v12

    move-wide v11, v13

    move-object/from16 v13, p1

    move v14, v0

    move-object/from16 v16, v20

    move-wide/from16 v19, v21

    move/from16 v21, v32

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v33

    .line 72
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31
.end method

.method final zzi()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zza:Ljava/lang/String;

    return-object v0
.end method

.method final zzj()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method final zzk()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method final zzl()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method final zzm()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzc:I

    return v0
.end method

.method final zzn()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzi:I

    return v0
.end method

.method final zzo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzea;->zzh:Ljava/util/List;

    return-object v0
.end method
