.class final Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;
.super Ljava/lang/Object;
.source "InteractiveRequestRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;
    .registers 4

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;-><init>(Landroid/os/Parcel;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;
    .registers 2

    .line 24
    new-array p1, p1, [Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;->newArray(I)[Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    move-result-object p1

    return-object p1
.end method
