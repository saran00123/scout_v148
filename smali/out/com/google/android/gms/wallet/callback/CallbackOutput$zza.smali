.class public final Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/callback/CallbackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/callback/CallbackOutput;Lcom/google/android/gms/wallet/callback/zzg;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;-><init>(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput-object p1, v0, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzfb:[B

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput p1, v0, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzex:I

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput p1, v0, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzfa:I

    return-object p0
.end method
