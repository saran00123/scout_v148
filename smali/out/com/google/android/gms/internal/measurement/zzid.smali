.class public final enum Lcom/google/android/gms/internal/measurement/zzid;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzid;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzid;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzid;

.field private static final synthetic zzn:[Lcom/google/android/gms/internal/measurement/zzid;


# instance fields
.field private final zzk:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzid;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzid;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzb:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "LONG"

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzc:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v2, 0x0

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v3, "DOUBLE"

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zze:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzf:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-string v3, "STRING"

    const/4 v4, 0x6

    const-string v7, ""

    move-object v2, v0

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzg:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    const-class v11, Lcom/google/android/gms/internal/measurement/zzgs;

    const-class v12, Lcom/google/android/gms/internal/measurement/zzgs;

    .line 8
    sget-object v13, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:Lcom/google/android/gms/internal/measurement/zzgs;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzh:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const-string v3, "ENUM"

    const/16 v4, 0x8

    const/4 v7, 0x0

    move-object v2, v0

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzi:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    const-class v11, Ljava/lang/Object;

    const-class v12, Ljava/lang/Object;

    const-string v9, "MESSAGE"

    const/16 v10, 0x9

    const/4 v13, 0x0

    move-object v8, v0

    .line 10
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzj:Lcom/google/android/gms/internal/measurement/zzid;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzid;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzb:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzc:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zze:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzf:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzg:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzh:Lcom/google/android/gms/internal/measurement/zzid;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzi:Lcom/google/android/gms/internal/measurement/zzid;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzid;->zzj:Lcom/google/android/gms/internal/measurement/zzid;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzn:[Lcom/google/android/gms/internal/measurement/zzid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzk:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzl:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzm:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzid;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zzn:[Lcom/google/android/gms/internal/measurement/zzid;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzid;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzl:Ljava/lang/Class;

    return-object v0
.end method
