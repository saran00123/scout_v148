.class final Lcom/google/android/gms/internal/measurement/zzfy;
.super Lcom/google/android/gms/internal/measurement/zzft;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzft;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method