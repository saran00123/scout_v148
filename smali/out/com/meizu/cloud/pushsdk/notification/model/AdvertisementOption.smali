.class public Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADVERTISEMENT_OPTION:Ljava/lang/String; = "ado"

.field public static final AD_INSTALL_PACKAGE:Ljava/lang/String; = "aip"

.field public static final AD_PACKAGE:Ljava/lang/String; = "ap"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_VALID_TIME:Ljava/lang/String; = "pt"

.field public static final TAG:Ljava/lang/String; = "AdvertisementOption"


# instance fields
.field private mAdInstallPackage:Ljava/lang/String;

.field private mAdPackage:Ljava/lang/String;

.field private mPriorityValidTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mPriorityValidTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdInstallPackage:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_28

    :catch_c
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json string error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdvertisementOption"

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;
    .registers 7

    const-string v0, "aip"

    const-string v1, "pt"

    const-string v2, "ap"

    new-instance v3, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;-><init>()V

    const-string v4, "AdvertisementOption"

    if-eqz p0, :cond_4e

    :try_start_f
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->setAdPackage(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->setPriorityValidTime(I)V

    :cond_29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->setAdInstallPackage(Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_36} :catch_37

    goto :goto_53

    :catch_37
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json obj error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_50

    :cond_4e
    const-string p0, "no such tag AdvertisementOption"

    :goto_50
    invoke-static {v4, p0}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdInstallPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdInstallPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPriorityValidTime()I
    .registers 2

    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mPriorityValidTime:I

    return v0
.end method

.method public setAdInstallPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdInstallPackage:Ljava/lang/String;

    return-void
.end method

.method public setAdPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdPackage:Ljava/lang/String;

    return-void
.end method

.method public setPriorityValidTime(I)V
    .registers 2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mPriorityValidTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisementOption{mAdPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPriorityValidTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mPriorityValidTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mAdInstallPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdInstallPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mPriorityValidTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvertisementOption;->mAdInstallPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
