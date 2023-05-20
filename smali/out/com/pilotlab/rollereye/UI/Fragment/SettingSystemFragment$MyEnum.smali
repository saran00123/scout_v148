.class final enum Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;
.super Ljava/lang/Enum;
.source "SettingSystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MyEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

.field public static final enum LANGUAGE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

.field public static final enum TIME_ZONE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 146
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    const/4 v1, 0x0

    const-string v2, "TIME_ZONE"

    invoke-direct {v0, v2, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->TIME_ZONE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    .line 147
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    const/4 v2, 0x1

    const-string v3, "LANGUAGE"

    invoke-direct {v0, v3, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->LANGUAGE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    const/4 v0, 0x2

    .line 145
    new-array v0, v0, [Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    sget-object v3, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->TIME_ZONE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->LANGUAGE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->$VALUES:[Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;
    .registers 2

    .line 145
    const-class v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;
    .registers 1

    .line 145
    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->$VALUES:[Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    return-object v0
.end method
