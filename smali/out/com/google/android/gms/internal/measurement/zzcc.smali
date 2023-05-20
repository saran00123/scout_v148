.class public final enum Lcom/google/android/gms/internal/measurement/zzcc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzcc;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzhu;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzcc;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzcc;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzcc;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzcc;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzcc;

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzhv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhv<",
            "Lcom/google/android/gms/internal/measurement/zzcc;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/measurement/zzcc;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_COMPARISON_TYPE"

    .line 1
    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v2, 0x1

    const-string v3, "LESS_THAN"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zzb:Lcom/google/android/gms/internal/measurement/zzcc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v3, 0x2

    const-string v4, "GREATER_THAN"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zzc:Lcom/google/android/gms/internal/measurement/zzcc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v4, 0x3

    const-string v5, "EQUAL"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zzd:Lcom/google/android/gms/internal/measurement/zzcc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v5, 0x4

    const-string v6, "BETWEEN"

    .line 5
    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zze:Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzcc;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzcc;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzb:Lcom/google/android/gms/internal/measurement/zzcc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzc:Lcom/google/android/gms/internal/measurement/zzcc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzd:Lcom/google/android/gms/internal/measurement/zzcc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcc;->zze:Lcom/google/android/gms/internal/measurement/zzcc;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zzh:[Lcom/google/android/gms/internal/measurement/zzcc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzca;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zzf:Lcom/google/android/gms/internal/measurement/zzhv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzcc;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzcc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zzh:[Lcom/google/android/gms/internal/measurement/zzcc;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzcc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzcc;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzcc;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zze:Lcom/google/android/gms/internal/measurement/zzcc;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zzd:Lcom/google/android/gms/internal/measurement/zzcc;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zzc:Lcom/google/android/gms/internal/measurement/zzcc;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zzb:Lcom/google/android/gms/internal/measurement/zzcc;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzhw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zza:Lcom/google/android/gms/internal/measurement/zzhw;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzcc;->zzg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
