.class final enum Lcom/android/camera/ui/V6PreviewPage$AnimationType;
.super Ljava/lang/Enum;
.source "V6PreviewPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/ui/V6PreviewPage$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/V6PreviewPage$AnimationType;

.field public static final enum COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

.field public static final enum EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 542
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    const/4 v1, 0x0

    const-string v2, "COLLAPSE"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/ui/V6PreviewPage$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .line 543
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    const/4 v2, 0x1

    const-string v3, "EXPAND"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/ui/V6PreviewPage$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .line 541
    sget-object v3, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->$VALUES:[Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/V6PreviewPage$AnimationType;
    .locals 1

    .line 541
    const-class v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/ui/V6PreviewPage$AnimationType;
    .locals 1

    .line 541
    sget-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->$VALUES:[Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0}, [Lcom/android/camera/ui/V6PreviewPage$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    return-object v0
.end method
