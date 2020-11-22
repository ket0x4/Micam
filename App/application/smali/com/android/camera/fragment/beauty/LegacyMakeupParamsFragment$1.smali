.class Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;
.super Ljava/lang/Object;
.source "LegacyMakeupParamsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;

    iput p3, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    if-eqz p3, :cond_2

    const/4 p0, 0x1

    if-eq p3, p0, :cond_1

    const/4 p0, 0x2

    if-eq p3, p0, :cond_0

    .line 53
    sget-object p0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    goto :goto_0

    .line 44
    :cond_2
    sget-object p0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 56
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/BeautyParameters;->setType(Lcom/miui/filtersdk/beauty/BeautyParameterType;)V

    .line 58
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xb4

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz p0, :cond_3

    .line 61
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected()V

    :cond_3
    return-void
.end method
