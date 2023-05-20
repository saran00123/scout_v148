.class public final Lcom/google/android/gms/internal/measurement/zzml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmk;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfe;

    const-string v1, "com.google.android.gms.measurement"

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzex;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x1

    const-string v2, "measurement.sdk.collection.enable_extend_user_property_size"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzfg;

    const-string v2, "measurement.sdk.collection.last_deep_link_referrer2"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzml;->zzb:Lcom/google/android/gms/internal/measurement/zzfg;

    const/4 v1, 0x0

    const-string v2, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzml;->zzc:Lcom/google/android/gms/internal/measurement/zzfg;

    const-string v2, "measurement.sdk.collection.last_gclid_from_referrer2"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzml;->zzd:Lcom/google/android/gms/internal/measurement/zzfg;

    const-string v1, "measurement.id.sdk.collection.last_deep_link_referrer2"

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zze:Lcom/google/android/gms/internal/measurement/zzfg;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzfg;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zzb:Lcom/google/android/gms/internal/measurement/zzfg;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zzc:Lcom/google/android/gms/internal/measurement/zzfg;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zzd:Lcom/google/android/gms/internal/measurement/zzfg;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
