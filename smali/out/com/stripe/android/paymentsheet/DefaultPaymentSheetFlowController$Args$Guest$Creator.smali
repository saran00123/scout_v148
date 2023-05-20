.class public final Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;
    .registers 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-array p1, p1, [Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest$Creator;->newArray(I)[Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;

    move-result-object p1

    return-object p1
.end method
