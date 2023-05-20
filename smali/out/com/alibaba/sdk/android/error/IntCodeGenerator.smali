.class public Lcom/alibaba/sdk/android/error/IntCodeGenerator;
.super Lcom/alibaba/sdk/android/error/CodeGenerator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/error/CodeGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateCodeInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public generateCodeStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
