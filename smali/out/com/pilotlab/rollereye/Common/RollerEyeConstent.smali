.class public Lcom/pilotlab/rollereye/Common/RollerEyeConstent;
.super Ljava/lang/Object;
.source "RollerEyeConstent.java"


# static fields
.field public static LOCAL_BASE_URL:Ljava/lang/String; = "192.168.1.100:80"

.field public static REMOTE_BASE_URL:Ljava/lang/String; = "127.0.0.1:8001"

.field public static baseURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    sget-object v0, Lcom/pilotlab/rollereye/Common/RollerEyeConstent;->LOCAL_BASE_URL:Ljava/lang/String;

    sput-object v0, Lcom/pilotlab/rollereye/Common/RollerEyeConstent;->baseURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
