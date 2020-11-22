.class public Lcom/android/camera/fragment/BaseFragmentOperation;
.super Ljava/lang/Object;
.source "BaseFragmentOperation.java"


# instance fields
.field public containerViewId:I

.field public operateType:I

.field public pendingFragmentInfo:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 47
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    return-void
.end method

.method private checkOperation()V
    .locals 1

    .line 127
    iget p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-gtz p0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "already set!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 73
    new-instance v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x7

    .line 120
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x5

    .line 106
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 107
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public push(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x4

    .line 99
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 100
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x3

    .line 93
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 80
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public show(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x6

    .line 113
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 114
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method
