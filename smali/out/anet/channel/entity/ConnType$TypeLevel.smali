.class public final enum Lanet/channel/entity/ConnType$TypeLevel;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/entity/ConnType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanet/channel/entity/ConnType$TypeLevel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanet/channel/entity/ConnType$TypeLevel;

.field public static final enum HTTP:Lanet/channel/entity/ConnType$TypeLevel;

.field public static final enum SPDY:Lanet/channel/entity/ConnType$TypeLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 22
    new-instance v0, Lanet/channel/entity/ConnType$TypeLevel;

    const/4 v1, 0x0

    const-string v2, "SPDY"

    invoke-direct {v0, v2, v1}, Lanet/channel/entity/ConnType$TypeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    .line 23
    new-instance v0, Lanet/channel/entity/ConnType$TypeLevel;

    const/4 v2, 0x1

    const-string v3, "HTTP"

    invoke-direct {v0, v3, v2}, Lanet/channel/entity/ConnType$TypeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lanet/channel/entity/ConnType$TypeLevel;

    sget-object v3, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    aput-object v3, v0, v1

    sget-object v1, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    aput-object v1, v0, v2

    sput-object v0, Lanet/channel/entity/ConnType$TypeLevel;->$VALUES:[Lanet/channel/entity/ConnType$TypeLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/entity/ConnType$TypeLevel;
    .registers 2

    .line 20
    const-class v0, Lanet/channel/entity/ConnType$TypeLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/ConnType$TypeLevel;

    return-object p0
.end method

.method public static values()[Lanet/channel/entity/ConnType$TypeLevel;
    .registers 1

    .line 20
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->$VALUES:[Lanet/channel/entity/ConnType$TypeLevel;

    invoke-virtual {v0}, [Lanet/channel/entity/ConnType$TypeLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0
.end method
