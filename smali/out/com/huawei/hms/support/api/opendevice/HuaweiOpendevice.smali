.class public Lcom/huawei/hms/support/api/opendevice/HuaweiOpendevice;
.super Ljava/lang/Object;
.source "HuaweiOpendevice.java"


# static fields
.field public static final HUAWEI_OPENDEVICE_API:Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApi;

.field public static final OPEN_DEVICE_API:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/huawei/hms/api/Api;

    const-string v1, "HuaweiOpenDevice.API"

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/support/api/opendevice/HuaweiOpendevice;->OPEN_DEVICE_API:Lcom/huawei/hms/api/Api;

    .line 2
    new-instance v0, Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApiImpl;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApiImpl;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/api/opendevice/HuaweiOpendevice;->HUAWEI_OPENDEVICE_API:Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApi;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
