.class public final enum Lcom/google/android/gms/internal/measurement/zzko;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzko;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zzko;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zzko;

.field private static final synthetic zzt:[Lcom/google/android/gms/internal/measurement/zzko;


# instance fields
.field private final zzs:Lcom/google/android/gms/internal/measurement/zzkp;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzd:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zza:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzc:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    .line 2
    invoke-direct {v0, v5, v2, v1, v4}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzb:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v5, 0x2

    const-string v6, "INT64"

    .line 3
    invoke-direct {v0, v6, v5, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzc:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    .line 4
    invoke-direct {v0, v7, v6, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v7, 0x4

    const-string v8, "INT32"

    .line 5
    invoke-direct {v0, v8, v7, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zze:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    const-string v8, "FIXED64"

    .line 6
    invoke-direct {v0, v8, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzf:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    .line 7
    invoke-direct {v0, v9, v8, v1, v4}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzg:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zze:Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    .line 8
    invoke-direct {v0, v10, v9, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzh:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzf:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v10, 0x8

    const-string v11, "STRING"

    .line 9
    invoke-direct {v0, v11, v10, v1, v5}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzi:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzi:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    .line 10
    invoke-direct {v0, v12, v11, v1, v6}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzj:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzi:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    .line 11
    invoke-direct {v0, v13, v12, v1, v5}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzk:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzg:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    .line 12
    invoke-direct {v0, v14, v13, v1, v5}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzl:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    .line 13
    invoke-direct {v0, v15, v14, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzm:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzh:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    .line 14
    invoke-direct {v0, v14, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzn:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    .line 15
    invoke-direct {v0, v15, v14, v1, v4}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzo:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    const-string v15, "SFIXED64"

    const/16 v14, 0xf

    .line 16
    invoke-direct {v0, v15, v14, v1, v2}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzp:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    const-string v14, "SINT32"

    const/16 v15, 0x10

    .line 17
    invoke-direct {v0, v14, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzq:Lcom/google/android/gms/internal/measurement/zzko;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    const-string v14, "SINT64"

    const/16 v15, 0x11

    .line 18
    invoke-direct {v0, v14, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzr:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzko;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zza:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzb:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzc:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zze:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzf:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzg:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzh:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzi:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzj:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzk:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzl:Lcom/google/android/gms/internal/measurement/zzko;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzm:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzn:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzo:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzp:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzq:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzko;->zzr:Lcom/google/android/gms/internal/measurement/zzko;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzt:[Lcom/google/android/gms/internal/measurement/zzko;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzkp;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzko;->zzs:Lcom/google/android/gms/internal/measurement/zzkp;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzko;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzko;->zzt:[Lcom/google/android/gms/internal/measurement/zzko;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzko;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzko;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzkp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzko;->zzs:Lcom/google/android/gms/internal/measurement/zzkp;

    return-object v0
.end method
