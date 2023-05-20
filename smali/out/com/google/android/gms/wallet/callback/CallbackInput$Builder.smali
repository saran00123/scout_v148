.class public final Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/callback/CallbackInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final synthetic zzez:Lcom/google/android/gms/wallet/callback/CallbackInput;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/callback/CallbackInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zzez:Lcom/google/android/gms/wallet/callback/CallbackInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/zze;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;-><init>(Lcom/google/android/gms/wallet/callback/CallbackInput;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/callback/CallbackInput;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zzez:Lcom/google/android/gms/wallet/callback/CallbackInput;

    return-object v0
.end method

.method public final setCallbackType(I)Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zzez:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iput p1, v0, Lcom/google/android/gms/wallet/callback/CallbackInput;->zzex:I

    return-object p0
.end method

.method public final setRequestBytes([B)Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zzez:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iput-object p1, v0, Lcom/google/android/gms/wallet/callback/CallbackInput;->zzey:[B

    return-object p0
.end method
