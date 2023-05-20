.class public final Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;
.super Lcom/stripe/android/stripe3ds2/init/ui/BaseCustomization;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization$a;

    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization$a;-><init>()V

    sput-object v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/stripe/android/stripe3ds2/init/ui/BaseCustomization;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/stripe/android/stripe3ds2/init/ui/BaseCustomization;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1f

    instance-of v2, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    if-eqz v2, :cond_20

    check-cast p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    .line 1
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3
    iget v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    iget p1, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    if-ne v2, p1, :cond_1c

    move p1, v1

    goto :goto_1d

    :cond_1c
    move p1, v0

    :goto_1d
    if-eqz p1, :cond_20

    :cond_1f
    move v0, v1

    :cond_20
    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, La/a/a/a/g/c;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    invoke-static {p1}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->requireValidColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    return-void
.end method

.method public setCornerRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    invoke-static {p1}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->requireValidDimension(I)I

    move-result p1

    iput p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/init/ui/BaseCustomization;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
