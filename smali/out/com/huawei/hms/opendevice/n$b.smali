.class public final enum Lcom/huawei/hms/opendevice/n$b;
.super Ljava/lang/Enum;
.source "ReportAaidToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/opendevice/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/opendevice/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum b:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum c:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum d:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum e:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum f:Lcom/huawei/hms/opendevice/n$b;

.field public static final synthetic g:[Lcom/huawei/hms/opendevice/n$b;


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v1, 0x0

    const-string v2, "IOS"

    const-string v3, "ios"

    invoke-direct {v0, v2, v1, v3}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->a:Lcom/huawei/hms/opendevice/n$b;

    .line 2
    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v2, 0x1

    const-string v3, "ANDROID"

    const-string v4, "android"

    invoke-direct {v0, v3, v2, v4}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->b:Lcom/huawei/hms/opendevice/n$b;

    .line 3
    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v3, 0x2

    const-string v4, "HARMONY"

    const-string v5, "harmony"

    invoke-direct {v0, v4, v3, v5}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->c:Lcom/huawei/hms/opendevice/n$b;

    .line 4
    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v4, 0x3

    const-string v5, "WINDOWS"

    const-string v6, "windows"

    invoke-direct {v0, v5, v4, v6}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->d:Lcom/huawei/hms/opendevice/n$b;

    .line 5
    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v5, 0x4

    const-string v6, "EMBED"

    const-string v7, "embed"

    invoke-direct {v0, v6, v5, v7}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->e:Lcom/huawei/hms/opendevice/n$b;

    .line 6
    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v6, 0x5

    const-string v7, "OTHERS"

    const-string v8, "others"

    invoke-direct {v0, v7, v6, v8}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->f:Lcom/huawei/hms/opendevice/n$b;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lcom/huawei/hms/opendevice/n$b;

    sget-object v7, Lcom/huawei/hms/opendevice/n$b;->a:Lcom/huawei/hms/opendevice/n$b;

    aput-object v7, v0, v1

    sget-object v1, Lcom/huawei/hms/opendevice/n$b;->b:Lcom/huawei/hms/opendevice/n$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/hms/opendevice/n$b;->c:Lcom/huawei/hms/opendevice/n$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/hms/opendevice/n$b;->d:Lcom/huawei/hms/opendevice/n$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/hms/opendevice/n$b;->e:Lcom/huawei/hms/opendevice/n$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/hms/opendevice/n$b;->f:Lcom/huawei/hms/opendevice/n$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->g:[Lcom/huawei/hms/opendevice/n$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/huawei/hms/opendevice/n$b;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/opendevice/n$b;
    .registers 2

    .line 1
    const-class v0, Lcom/huawei/hms/opendevice/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/opendevice/n$b;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/opendevice/n$b;
    .registers 1

    .line 1
    sget-object v0, Lcom/huawei/hms/opendevice/n$b;->g:[Lcom/huawei/hms/opendevice/n$b;

    invoke-virtual {v0}, [Lcom/huawei/hms/opendevice/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/opendevice/n$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/opendevice/n$b;->h:Ljava/lang/String;

    return-object v0
.end method
