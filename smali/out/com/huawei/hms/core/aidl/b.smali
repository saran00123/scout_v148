.class public Lcom/huawei/hms/core/aidl/b;
.super Ljava/lang/Object;
.source "DataBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/core/aidl/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Bundle;

.field private c:I

.field private d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/huawei/hms/core/aidl/b$a;

    invoke-direct {v0}, Lcom/huawei/hms/core/aidl/b$a;-><init>()V

    sput-object v0, Lcom/huawei/hms/core/aidl/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    .line 24
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    .line 11
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    .line 14
    invoke-direct {p0, p1}, Lcom/huawei/hms/core/aidl/b;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/hms/core/aidl/b$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/core/aidl/b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    .line 34
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    .line 62
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/b;->a:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/os/Parcel;)V
    .registers 3

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->a:Ljava/lang/String;

    .line 6
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/huawei/hms/core/aidl/b;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    .line 7
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/huawei/hms/core/aidl/b;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/huawei/hms/core/aidl/b;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    return-object p0
.end method

.method public b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/huawei/hms/core/aidl/b;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/huawei/hms/core/aidl/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4
    iget-object p2, p0, Lcom/huawei/hms/core/aidl/b;->d:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
