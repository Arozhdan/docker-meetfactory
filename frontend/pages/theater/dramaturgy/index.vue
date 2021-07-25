<template>
  <div class="theater-page">
    <Cover bg="https://images.unsplash.com/photo-1624380715369-1bd869df8096?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80">
      <template #title>
        Dramaturgie Divadla MeetFactory
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Divadlo MeetFactory (DMF) bylo založeno v roce 2008. Od té doby uskutečnilo ve vlastní produkci několik desítek inscenací a vydobylo si výrazné místo nejen na pražské divadelní mapě.
        V současnosti profilujeme DMF jako moderní komorní scénu zaměřenou na <a href="#" class="underline font-bold">adaptace současných děl </a> světové prózy. Důvěřujeme síle slova, a proto aktuální inscenace staví na textu a minimalistickém, civilním herectví. DMF se soustředí na pocity a postoje člověka a jeho myšlenky, zpracovává témata jako úzkost, neurózu a strach lidí v dnešním světě. „Nesoudíme je, před ničím nevarujeme, nedokumentujeme, neinformujeme,” uvádí <b>Matěj Samec.</b> „Zkoumáme obsahy a jejich hloubku.”
        Do povědomí divadelní veřejnosti se DMF zapsalo jako inspirativní prostor svobodné a nekompromisní tvorby, která je představována zpravidla v divadelním sále, výjimečně pak v rezidenčním patře. Ke spolupráci přizvalo řadu zahraničních tvůrců, zejména režisérů a scénografů, kteří v České republice pracovali vůbec poprvé. Zahraničním divadelníkům poskytujeme prostor pro rezidenční pobyty. Podporujeme rovněž mladé začínající tvůrce. Inscenace jsou ve většině případů uváděny s anglickými titulky. DMF uvádí 4 premiéry ročně a funguje bez stálého souboru.
        Za dobu existence divadla ve smíchovské továrně vyprofilovaly výrazné režijní (M. Pěchouček, J. Nebeský, J. Kačena, L. Ferenzová ad.) i herecké (T. Bambušek, K. Dobrý, J. Lepšík, T. Jeřábek, J. Kozubková, H. Třešňáková ad.) osobnosti, které uvedl <b>Jan Horák,</b> působící jako dramaturg této scény do sezóny 2011/2012. Po kratší dobu následně tuto roli zastával dramaturg Jan Tošovský. Od roku 2013 až do současnosti vede DMF dramaturg Matěj Samec. V současnosti mezi stálé spolupracovníky patří osobnosti, jakými jsou režiséři N. Deáková, L. Ferenzová či A. Vanišová a herci A. Krausová, J. Gottwald či E. Salzmannová.
        DMF se účastní festivalů …příští vlna / next wave… a Malá inventura, z mimopražských Mezinárodního festivalu Divadlo Plzeň a Divadelní světu Brno. V sezóně 2017/2018 jsme uvedli premiéry inscenací Jasno lepo podstín zhyna, Pohřeb sardinky, Temná energie a Strážci občanského dobra 2. Na závěr léta chystáme premiéru site-specific inscenace
        <a href="#" class="underline font-bold">Psí dny.</a>
      </p>
      <h2 class="h2 my-4">
        Matěj Samec (dramaturg DMF)
      </h2>
      <a href="#" class="link link--email">matej.samec@meetfactory.cz</a>
    </div>
    <div class="container-full my-3">
      <h1 class="h1">
        Fotogalerie
      </h1>
    </div>
    <Gallery :to="{name: 'residence-gallery', params:{gallery:'gallery-title'}}" :images="images" />
    <div style="margin-left: -2px; margin-right: -2px;" class="flex my-8 gap-0.5">
      <BigLink :to="{name:'theater-repertoire'}">
        Repertoár
      </BigLink>
      <BigLink :to="{name:'theater-actors'}">
        Herci
      </BigLink>
      <BigLink :to="{name:'theater-ready'}">
        Připravujeme
      </BigLink>
    </div>
    <div class="container-full">
      <h2 class="h2 mb-3 mt-9">
        Hrajeme
      </h2>
      <div class="theater-page__settings ">
        <Date>Kalendář</Date>
        <FullCalendar :short-titles="true" />
        <Button class="button--secondary">
          7 dní
        </Button>
        <Button class="button--secondary">
          30 dní
        </Button>
        <Button class="button--secondary">
          90 dní
        </Button>
        <div class="flex-grow spacer" />
        <Searchbox class="self-center" placeholder="Hledat v hudbě ..." />
      </div>
    </div>
    <div class="container-full">
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width mb-12">
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
      </div>
    </div>
    <div style="margin-left: -2px; margin-right: -2px;" class="flex my-8 gap-0.5">
      <BigLink :to="{name:'theater-archive'}">
        Archiv
      </BigLink>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/theater.pcss'
export default {
  name: 'Theater',
  data: () => ({
    images: [
      'https://images.unsplash.com/photo-1622495805731-eefd22e836f4?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622549217773-2653d7463dd7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1622549069429-c2053df4b69d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1622498159371-15d14f8acdaa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2200&q=80https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622496198859-7cebd677067f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1622367688327-1004c837e139?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1622396090014-0dc5f3844b72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1593642634443-44adaa06623a?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1225&q=80',
      'https://images.unsplash.com/photo-1622495519717-966150e7118e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80'
    ]
  })
}
</script>

<style scoped>

</style>
