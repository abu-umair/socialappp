@extends('layouts.admin')
@section('title','Profile')
@section('content')
<div class="main-content">

  <div class="section-body">
  

  <div class="row mt-sm-4">
    <div class="col-12 col-md-12 col-lg-5">
      <div class="card profile-widget">
        <div class="profile-widget-header mt-3">
          <img alt="image" src="{!!$customer->customer->foto ? Storage::url($customer->customer->foto) : url('backend/assets/img/avatar/avatar-1.png')!!}" class="img-thumbnail ">
          <div class="profile-widget-items">
            <div class="profile-widget-item">
              @php
                      $nowCust = \Carbon\Carbon::now();
                      $past   = $nowCust->subMonth();
                      $future = $nowCust->addMonth();
                      // $mydate = $nowCust->toDateTimeString();
                      $created_customer = \Carbon\Carbon::parse($customer->created_at);
                      $mydateCust = $created_customer->toDateString();
                      $myTimeCust = $created_customer->toTimeString();
                      // $mytimedatetime = $created_customer->toDateTimeString();
                      $covertDateCust = \Carbon\Carbon::createFromDate($mydateCust);
                      // $cobadatetime = \Carbon\Carbon::createFromDateTime($mytimedatetime);
                      $convertTimeCust = \Carbon\Carbon::createFromTimeString($myTimeCust);


                      //$diffHuman = $created_customer->diffForHumans($past);  // 3 Months ago
                      $timeCust = $convertTimeCust->diffForHumans();
                      $dateCust = $covertDateCust->diffForHumans();
                      //$diffHours = $created_customer->diffInHours($future);  // 3 
                      //$diffMinutes = $created_customer->diffInMinutes($nowCust)   // 180

                      // if($created_customer->diff($nowCust)-->subDays(1)){
                        
                      //   $differenceCust = 'd';
                      // }
                      // elseif($created_customer->diff($nowCust)->days == 2){
                      //   $differenceCust = 's';
                      // }
                      // else {
                      //   $differenceCust = $dateCust;
                      // }
                      $differenceCust = ($created_customer->diff($nowCust)->days < 1)
                                    ? $timeCust : $dateCust;
                  @endphp    
              <div class="profile-widget-item-label">Waktu Pendaftaran</div>
              <div class="profile-widget-item-value">{{$differenceCust}}</div>
              
              {{-- <div class="profile-widget-item-value">{{$customer->created_at}}</div> --}}
            </div>
            {{-- <div class="profile-widget-item">
              <div class="profile-widget-item-label">Email</div>
              <div class="profile-widget-item-value">{{$customer->email}}</div>
            </div>
            <div class="profile-widget-item">
              <div class="profile-widget-item-label">Phone</div>
              <div class="profile-widget-item-value">{{$customer->phone}}</div>
            </div> --}}
            {{-- <div class="profile-widget-item">
              <div class="profile-widget-item-label">Following</div>
              <div class="profile-widget-item-value">2,1K</div>
            </div> --}}
          </div>
          <div class="profile-widget-items">
            
            <div class="profile-widget-item">
              <div class="profile-widget-item-label">Email</div>
              <div class="profile-widget-item-value">{{$customer->email}}</div>
            </div>
            <div class="profile-widget-item">
              <div class="profile-widget-item-label">Phone</div>
              <div class="profile-widget-item-value">{{$customer->phone}}</div>
              
            </div>
            {{-- <div class="profile-widget-item">
              <div class="profile-widget-item-label">Following</div>
              <div class="profile-widget-item-value">2,1K</div>
            </div> --}}
          </div>
        </div>
        @php   
                if ($customer->jangka == 0){
                    $itemJangka = 'Minggu';
                }
                elseif($customer->jangka == 1){
                  $itemJangka = 'Bulan';
                }
                  else {
                  $itemJangka = 'Tahun';
                  }
               @endphp
        <div class="profile-widget-description">
          <div class="profile-widget-name"><h5 class="d-inline">{{$customer->name}}</h5> <div class="text-muted d-inline font-weight-normal"><div class="slash"></div> Customer</div></div>
          <p class="font-weight-normal">
            Transaksi : <b>{{$customer->transaksi}} Transaksi</b> <br>
            {{-- Harga : <b>{{$customer->harga}}</b> <br> --}}
            {{-- Pengalaman : <b>{{$customer->pengalaman}}</b> <br> --}}
            {{-- Lokasi : <b>{{$customer->lokasi}}</b> <br> --}}
            Status : <b>{{$customer->status == 0 ? 'Tidak Aktif' : 'Aktif'}}</b> <br>
          </p>
          
        </div>
        
        {{-- <div class="card-footer text-center">
          <div class="font-weight-bold mb-2">Follow Ujang On</div>
          <a href="#" class="btn btn-social-icon btn-facebook mr-1">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="#" class="btn btn-social-icon btn-twitter mr-1">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="#" class="btn btn-social-icon btn-github mr-1">
            <i class="fab fa-github"></i>
          </a>
          <a href="#" class="btn btn-social-icon btn-instagram">
            <i class="fab fa-instagram"></i>
          </a>
        </div> --}}
      </div>
    </div>
    <div class="col-12 col-md-12 col-lg-7">
      <div class="card mt-4">
        <form method="post" class="needs-validation" novalidate="">
          <div class="card-header">
            <h4>Jejak Transaksi</h4>
          </div>
          <div class="card-body">
            <table class="table table-sm">              
              <tbody>
                @forelse ($ongoings as $ongoing)                    
                <tr class="">
                  <td><p>{{$ongoing->user->name}} menambahkan 
                    @if ($ongoing->doctor == true || $ongoing->groomer == true)
                      {!!$ongoing->doctor ? $ongoing->doctor->name .' <span class="border-bottom">sebagai doctor</span> ' : $ongoing->groomer->name.' sebagai groomer '!!}  
                    @elseif($ongoing->doctor == false && $ongoing->groomer == false)
                      <span class="border-bottom">sebagai doctor/groomer(telah dihapus)</span>
                    @else
                      <span class="border-bottom">sebagai doctor/groomer(dipilih keduanya)</span>
                    @endif
                      hewannya dengan status 
                      {!!$ongoing->status == 1 ? '<span class="border-bottom">completed</span>' : '<span class="border-bottom">no completed</span>'!!} dan
                      {!!$ongoing->acc != null ? '<span class="border-bottom"> di acc</span>' : 
                      '<span class="border-bottom"> belum di acc</span>'!!}
                  </p></td>
                  @php
                      $now = \Carbon\Carbon::now();
                      $past   = $now->subMonth();
                      $future = $now->addMonth();
                      // $mydate = $now->toDateTimeString();
                      $created_at = \Carbon\Carbon::parse($ongoing->created_at);
                      $mydate = $created_at->toDateString();
                      $myTime = $created_at->toTimeString();
                      // $mytimedatetime = $created_at->toDateTimeString();
                      $covertDate = \Carbon\Carbon::createFromDate($mydate);
                      // $cobadatetime = \Carbon\Carbon::createFromDateTime($mytimedatetime);
                      $convertTime = \Carbon\Carbon::createFromTimeString($myTime);


                      //$diffHuman = $created_at->diffForHumans($past);  // 3 Months ago
                      $time = $convertTime->diffForHumans();
                      $date = $covertDate->diffForHumans();
                      //$diffHours = $created_at->diffInHours($future);  // 3 
                      //$diffMinutes = $created_at->diffInMinutes($now)   // 180

                      $difference = ($created_at->diff($now)->days < 1)
                                    ? $time : $date;
                  @endphp                  
                  <td class=" pt-2"><small class="secondary ">{{$difference}}</small></td>
                </tr>
                @empty
                      <td colspan="7" class="text-center text-muted">
                          Empty
                      </td>                                
                @endforelse
                
              </tbody>
            </table>
          </div>
          <div class="card-footer text-right">
            
          </div>
        </form>
      </div>
    </div>
  </div>
  </div>
</div>
@endsection
















